# REST API Test Suite: DemoShopping Platform

### 🎯 Overview

Automated and exploratory REST API test suite developed in Postman for the **DemoShopping** platform. The suite implements full lifecycle validation across product catalogs, shopping carts, checkout payments, and order workflows based on Swagger/OpenAPI specifications.

It covers end-to-end positive paths, client/server error responses (`400`, `401`, `403`, `404`, `500`), dynamic variable chaining across requests, and SLA response-time monitoring (< 500 ms).

---

### 🛠 Tech Stack & Specifications

* **Tool:** Postman (Collection Schema `v2.1.0`)
* **Test Framework:** Postman Sandbox (JavaScript, Chai.js assertions)
* **Authentication:** Dual-layer:
  * **Basic Auth** at root collection level
  * **Bearer Token** (`Bearer {{key}}`) inherited dynamically across Cart, Payment, and Orders folders
* **Variable Scope:** Dynamic Collection & Environment Variables (`url`, `key`, `product_id`, `cart_item_id`, `orderId`)

---

### 📁 Collection Architecture & Modules

#### 1. Authentication & Catalog Root
* `POST /login` — Authenticates user credentials, asserts `Content-Type: application/json`, and dynamically extracts the session token into `{{key}}`.
* `GET /products/` — Validates array responses and essential schema fields (`product_id`, `name`, `price`).

#### 2. Products (Catalog & Lifecycle Management)
* **Add product (`POST /add-product`):**
  * `200 OK` — Dynamic regex extraction of newly generated ID into `{{product_id}}`.
  * `400 Bad Request` — Schema validation with invalid body types.
* **Get Product by ID (`GET /products/id/{{product_id}}`):**
  * `200 OK` — Verifies product schema properties.
  * `404 Not Found` — Handling nonexistent items.
* **Renew product (`PUT /products/id/{{product_id}}`):**
  * `200 OK`, `400 Bad Request`, `404 Not Found`.
* **Partly renew product (`PATCH /products/id/{{product_id}}`):**
  * `200 OK` (checks confirmation string), `400 Bad Request`, `404 Not Found`.
* **Search & Filters:**
  * `GET /products/FindByCategory` — Positive query tests (`200 OK`) and non-matching category assertions (`404 Not Found`).
  * `GET /products/FindByManufacturer` — Valid manufacturer query checks vs. empty queries (`404 Not Found`).
  * `GET /products/FindByShipping` — Verifies boolean filtering (`freeShipping=true`).
  * `GET /products/filter` — Multi-parameter complex query verification vs. malformed values (`400 Bad Request`).
* **Delete product (`DELETE /products/id/{{product_id}}`):**
  * `200 OK`, `403 Forbidden` (restricted resource), `404 Not Found`.

#### 3. Cart (Shopping Cart State Engine)
* **Add to cart (`POST /cart`):**
  * `200 OK` — Authorized item additions (`Bearer {{key}}`).
  * `400 Bad Request` — Non-numeric or invalid payload parameters.
  * `401 Unauthorized` — Verifies unauthenticated session rejection.
  * `500 Internal Server Error` — Boundary edge case handling.
* **Get cart (`GET /getCart`):**
  * `200 OK` — Validates array schema, property bindings, and dynamically captures `cart_item_id`.
  * `401 Unauthorized` / `500 Server Error`.
* **Renew quantity (`PATCH /cart/{{cart_item_id}}`):**
  * `200 OK`, `400 Bad Request`, `401 Unauthorized`, `404 Not Found`, `500 Server Error`.
* **Clear cart (`DELETE /cart/{{cart_item_id}}`):**
  * `200 OK` (deletion confirmation), `400 Bad Request`, `401 Unauthorized`, `404 Not Found`.

#### 4. Payment (Card Processing & Balance)
* `POST /pay`:
  * `200 OK` — Successful transaction flow and confirmation string parsing.
  * `400 Bad Request` — Insufficient funds validation (`"Недостаточно средств на карте."`).
  * `401 Unauthorized` — Enforces mandatory auth checks (`"Требуется авторизация"`).
* `GET /updateBalances`:
  * `200 OK` — Resets test credit card balances to prevent execution blocking.

#### 5. Create Orders (Order Lifecycle & History)
* `GET /user-orders` — Retrieves orders array and extracts current item metadata.
* `POST /orders` — Generates a new order and captures dynamic `{{orderId}}`.
* `PATCH /orders/{orderId}/products/{productId}` — Updates ordered product quantity.
* `POST /update-orders-total` — Triggers automated order recalculations.
* `DELETE /orders/{orderId}/products/{productId}` — Removes line items from order.
* `GET /api/orders-history` — Audits JSON schema, array structures, and line items.

---

### 🧪 Assertion Logic & Scripting Examples

```javascript
// Dynamic regex capture of ID from plain text / string responses
const responseText = pm.response.text();
const match = responseText.match(/\d+/);
const productId = match ? match[0] : null;
pm.collectionVariables.set("product_id", productId);

// Dynamic Bearer token binding from Login endpoint
var jsonData = pm.response.json();
pm.collectionVariables.set("key", jsonData.token);

// SLA Response Time assertion (< 500ms across all endpoints)
pm.test("Response time is less than 500ms", function () {
    pm.expect(pm.response.responseTime).to.be.below(500);
});

// Deep schema property verification
pm.test("Order objects have required fields", function () {
    const jsonData = pm.response.json();
    if (jsonData.length > 0) {
        pm.expect(jsonData[0]).to.have.property('order_id');
        pm.expect(jsonData[0]).to.have.property('productName');
        pm.expect(jsonData[0]).to.have.property('totalPrice');
    }
});
