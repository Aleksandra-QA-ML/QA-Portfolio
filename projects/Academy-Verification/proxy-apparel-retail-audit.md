# Case Study: Apparel & Fashion Retail Web Audit (Proxy & Traffic Analysis)

### 🎯 Project Overview

In-depth functional and exploratory verification of a responsive fashion and accessories e-commerce portal, executed during the uTest Academy Proxy Cycle. The testing focused on intercepting and analyzing network traffic, validating catalog navigation (PLP/PDP), onboarding flows, cart calculation consistency, and discount price sorting algorithms on desktop web.

### 💻 Test Environment

* **Platform:** Web Desktop
* **OS:** Windows 10
* **Browser:** Google Chrome (Latest Stable)
* **Tools:** HTTP/HTTPS Traffic Proxy (Charles Proxy / Proxyman), Chrome DevTools
* **Scope:** Account Creation, Catalog Faceted Filtering, Product Detail Page (PDP), Cart & Checkout Logic, Promo Code Calculation

### 📊 Audit Summary & Status

* **Cycle Scope:** 100% Completed (Registration, Category Pages, Cart Lifecycle, Help Center).
* **Proxy & Traffic Verification:** Inspected client-side requests, query parameter payloads, and JSON response bodies for dynamic catalog sorting.
* **Defect Approval Rate:** 100% Approved (critical pricing logic defect verified and accepted by cycle TTLs).

### 🔍 Critical Findings (Bugs)

#### 1. [Sorting Algorithm / Pricing Logic] — PLP Price Sort Ignores Active Promotional Discounts
* **Defect:** Sorting products by price ("Price: Low to High" and "Price: High to Low") on Product Listing Pages evaluates solely the original MSRP/base price, completely ignoring active sale and discounted promo prices.
* **Risk:** High (Severe customer confusion, broken bargain discovery, failure of promotional campaigns, and loss of sales conversions).

#### 2. [Network / Payload Inspection] — Unoptimized Query Parameter Sorting Payloads
* **Defect:** Identified via proxy traffic inspection that sorting queries failed to pass the active discount flag in the request payload to the catalog API endpoint, falling back to static database sorting keys.
* **Risk:** Medium (Backend and frontend state desynchronization regarding promotional pricing).

### 🛠 Skills & Tools

* **Traffic Proxy Analysis:** Inspecting HTTP/HTTPS traffic, headers, and API query parameters via Charles Proxy and Proxyman.
* **E-Commerce Funnel Testing:** Validating shopping cart state persistence, multi-currency recalculations, and coupon code engines.
* **Catalog & Filter Verification:** Auditing dynamic product sorting algorithms, faceted search query parameters, and boundary conditions.
* **Browser Diagnostics:** Isolating UI vs. API data discrepancies using Chrome DevTools Network and Console panels.

---
*Created as part of the QA Portfolio — Aleksandra Savostianova*
