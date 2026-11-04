# Case Study: Global Sports Retail E-Commerce Ecosystem (uTest Academy Challenge)

### 🎯 Project Overview

Full-scale functional and exploratory testing during the rigorous **uTest Academy Challenge Cycle** for a global sports retail and apparel platform. The cycle simulated commercial production auditing, evaluating end-to-end purchasing pipelines, catalog navigation (PLP/PDP), product variant state persistence, boundary quantity constraints, and checkout funnel stability across mobile environments.

### 📱 Test Environment

* **Device:** Google Pixel 7
* **Platform:** Mobile Web / Responsive Browser
* **Scope:** Product Listing Pages (PLP), Product Details Pages (PDP), Cart Limits, Price Sorting Engine, Category Taxonomy, Navigation Routing

### 📊 Audit Summary & Status

* **Cycle Scope:** 100% Completed (Onboarding, Store Locator, Cart & Checkout Funnels, Wishlist).
* **Defect Approval Rate:** **71% Approved** (5 out of 7 reported defects verified and accepted by cycle TTLs).
* **E-Commerce Boundary Verification:** Audited quantity thresholds, color swatch state binding, catalog categorization rules, and sorting algorithms.

### 🔍 Critical Findings (Bugs)

#### 1. [Cart Logic / Boundary Violation] — PDP Add-to-Cart Bypasses Maximum Quantity Limit
* **Defect:** Adding items directly from the Product Details Page (PDP) bypasses the platform's strict maximum cart threshold, allowing total quantity to exceed the hard limit (incrementing from 12 to 13 units without validation errors).
* **Risk:** High (Inventory desynchronization, operational warehouse fulfillment errors, and violation of purchasing policy constraints).

#### 2. [PLP / State Management] — Quick Color Selection Widget Resets Active Swatch
* **Defect:** Interacting with the quick color selection widget on Product Listing Pages (PLP) triggers an unhandled state reset, reverting the item thumbnail back to the default color rather than persisting the user-selected variant.
* **Risk:** Medium (Confusing visual UX, misleading product selections, and potential ordering of incorrect variants).

#### 3. [Sorting Engine / Data Sorting] — Price Sort Logic Fails to Order Products Correctly
* **Defect:** Applying price sorting filters ("Price: Low to High" and "Price: High to Low") on PLP fails to order items chronologically by numerical price, displaying mixed and misordered price cards.
* **Risk:** High (Degraded customer trust, broken catalog discovery, and impaired price transparency).

#### 4. [Information Architecture / Routing] — Incorrect Navigation Routing on Menu Handoff
* **Defect:** Selecting specific category menu links triggers incorrect deep routing, landing users on unrelated subpages.
* **Risk:** Medium (Broken navigation flow and lost engagement during product discovery).

#### 5. [Catalog Taxonomy / Data Integrity] — Product Misclassification in Listing Hierarchy
* **Defect:** Scarf apparel items are incorrectly surfaced under the "Hats & Beanies" category listing.
* **Risk:** Medium (Violates catalog taxonomy standards and hinders search/filtering precision).

### 🛠 Skills & Tools

* **E-Commerce Funnel Auditing:** Stress-testing cart threshold boundaries, variant selection widgets, and multi-step checkout handoffs.
* **Catalog & Sorting Verification:** Auditing numerical sorting algorithms, category taxonomies, and faceted search filters.
* **Mobile Diagnostics:** Inspecting mobile responsive viewport behaviors and DOM state resets on Google Pixel.
* **Defect Reporting Rigor:** Authoring reproducible bug reports with isolated boundary conditions and visual evidence under strict Academy audit standards.

---
*Created as part of the QA Portfolio — Aleksandra Savostianova*
