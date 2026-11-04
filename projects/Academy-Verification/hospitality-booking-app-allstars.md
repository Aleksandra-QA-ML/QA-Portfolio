# Case Study: Hospitality & Short-Term Rental Booking Platform (Android All-Stars)

### 🎯 Project Overview

Full-scale mobile exploratory and functional testing during the invitation-only **uTest Academy All-Stars Cycle** for a global vacation rental and hospitality platform (similar to Airbnb). The testing focused on end-to-end booking funnels, dynamic pricing engine consistency, map-driven search exploration, wishlists, and account profile lifecycle on native Android.

### 📱 Test Environment

* **Device:** Google Pixel 7
* **OS:** Android 17
* **Tools:** Android Debug Bridge (`adb logcat`), Chrome DevTools, Network Proxy
* **Scope:** Search & Date Pickers, Interactive Map Pins, Accommodation Details Page (ADP), Checkout Funnels, Wishlists & Collections, Push Notifications

### 📊 Audit Summary & Status

* **Cycle Performance:** Ranked as **Test Score Leader & Cycle Leader** among invited all-star testers.
* **Defect Quality Rating:** **100% "Very Valuable"** (2 out of 2 submitted bug reports awarded the highest *Very Valuable* rating by TTL and Client).
* **Booking Pipeline Verification:** Validated accommodation discovery, guest counter boundaries (infants/pets), pricing transparency, and checkout stage handoffs.

### 🔍 Critical Findings (Bugs)

#### 1. [Financial Integrity / Pricing Discrepancy] — Price Mismatch Between ADP and Checkout Breakdown
* **Defect:** A critical calculation desynchronization between the total amount displayed on the Accommodation Details Page (ADP) and the calculated summary on the final Checkout Breakdown screen (differing base rates / cleaning fee aggregation).
* **Risk:** Critical (High legal and financial liability, direct booking abandonment at the final checkout step, customer distrust, and elevated support disputes).

#### 2. [Functional / UI State] — "Clear All" Button Fails in Wishlist Under High Comparison Load
* **Defect:** In the Wishlist comparison view, tapping the "Clear All" action fails to respond or purge items whenever comparing more than 3 accommodations simultaneously.
* **Risk:** High (Broken state persistence in multi-item comparison workflows, UI freeze, and impaired user personalization).

### 🛠 Skills & Tools

* **Mobile Functional Testing:** Validating native Android gesture navigation, interactive map panning/zooming, and date-range pickers.
* **Financial & Checkout Logic:** Auditing multi-tier cost breakdowns, tax/fee aggregations, dynamic currency calculations, and payment gateway handoffs.
* **Data State & Comparison Engines:** Stress-testing multi-object comparison grids, collection caching, and local state flush handlers.
* **Diagnostic Logging:** Capturing stack traces, UI touch event sequences, and network payloads via Android Debug Bridge (`adb logcat`).

---
*Created as part of the QA Portfolio — Aleksandra Savostianova*
