# Case Study: Apparel & Fashion Retail Desktop Web Audit (Computers Cycle)

### 🎯 Project Overview

Full-scale desktop web exploratory and functional testing of an international apparel and accessories e-commerce portal during the uTest Academy Computers Cycle. The testing focused on end-to-end shopping journeys, catalog navigation (PLP/PDP), cart recalculation engines, quantity threshold enforcement, and checkout pipeline stability on desktop environments.

### 💻 Test Environment

* **Platform:** Web Desktop
* **OS:** Windows 10
* **Browser:** Google Chrome (Latest Stable)
* **Scope:** Account Authentication (One-Time Code Login), Store Locator Map Integration, PDP Add-to-Cart Flow, Cart Recalculations & Quick Add Thresholds, Wishlist

### 📊 Audit Summary & Status

* **Cycle Performance:** Ranked as **Cycle Test Score Leader** across all participating testers.
* **Defect Approval Rate:** **100% Approved (3 out of 3 submitted bug reports verified)**.
* **Defect Quality:** Awarded **1 "Very Valuable" rating** for uncovering a critical e-commerce cart quantity boundary bypass.

### 🔍 Critical Findings (Bugs)

#### 1. [Cart Logic / Boundary Bypass] — Line Item Bypasses Maximum Quantity Limit via Quick Add (Rated: Very Valuable)
* **Defect:** While manual inputs and standard increment buttons enforce maximum order quantity limits, triggering the "Quick Add" action directly within the cart bypasses the threshold check, allowing items to exceed maximum allowable purchasing limits.
* **Risk:** High (Inventory desynchronization, warehouse fulfillment errors, bulk-buying exploitation, and violation of retail purchasing rules).

#### 2. [Financial / String Formatting] — Line Item Total Displays Incorrectly Formatted Currency Value
* **Defect:** In the cart summary, the line item total for the "Reflect Sling" product displays an unhandled numerical string format (missing decimal places / misplaced currency symbol), contradicting standard pricing presentation.
* **Risk:** Medium (Customer mistrust, visual ambiguity during checkout calculation, and potential dispute escalation).

#### 3. [UI / Consistency] — Inconsistent CTA Button Labeling on PDP
* **Defect:** The primary Call-to-Action button for adding products to the shopping bag displays conflicting labeling across related product variations on the Product Details Page (PDP).
* **Risk:** Medium (Broken UI/UX design pattern consistency and friction in primary purchase conversion paths).

### 🛠 Skills & Tools

* **Desktop E-Commerce Testing:** End-to-end testing of retail purchasing funnels, faceted filters, and store locator maps.
* **Boundary Value Analysis (BVA):** Uncovering edge cases and boundary bypasses in shopping cart quantity limits.
* **Data & Pricing Verification:** Auditing dynamic line-item recalculations, string formatting, and currency localization.
* **Defect Reporting Rigor:** Authoring high-impact bug reports recognized with "Very Valuable" ratings by cycle TTLs.

---
*Created as part of the QA Portfolio — Aleksandra Savostianova*
