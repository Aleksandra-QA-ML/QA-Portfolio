# Case Study: Enterprise Financial Services & Investment Portal (Web & mWeb)

### 🎯 Project Overview

Production post-release exploratory and smoke testing for a global corporate investment management and financial services platform (US regional portal). The cycle focused on verifying production deployment stability, role-based content personalization, financial document libraries, search engines, and compliance-driven access controls.

### 💻 Test Environment

* **Platform:** Responsive Desktop Web & Mobile Web (mWeb)
* **OS / Browser:** Windows 10 & Chrome (Latest Stable)
* **Target Geo:** United States (en-US)
* **Scope:** Funds & Market Documents, Gated Content Entitlements, Role-Based Access Control (RBAC), Global Search, Session State Persistence

### 📊 Audit Summary & Status

* **Post-Deployment Smoke Execution:** 100% Completed (critical business pages, fund prospectus downloads, and institutional disclosures verified in production).
* **Role-Based Content Verification:** Audited page variants across user segments (Individual Investor vs. Financial Professional).
* **Defect Approval Rate:** Verified and approved by cycle TTL/Customer.

### 🔍 Critical Findings (Bugs)

#### 1. [Security / State Persistence] — "Remember me for 180 days" Checkbox State Fails to Persist
* **Defect:** Selecting the "Remember me for 180 days" option during role authentication fails to store the persistent cookie/local storage token, forcing users to re-declare their jurisdiction and role upon browser restart.
* **Risk:** High (Degraded customer experience, friction for returning institutional investors, and broken long-term session persistence).

#### 2. [RBAC / Access Control] — Default Header Exposes Financial Professional Navigation Without Role Selection
* **Defect:** Unauthenticated guest users are presented with the specialized "Financial Professional" restricted navigation menu by default before any explicit persona or investor tier has been selected.
* **Risk:** High (Compliance and regulatory liability regarding financial marketing restrictions; failure of baseline Role-Based Access Control logic).

### 🛠 Skills & Tools

* **Enterprise Web Testing:** Post-release smoke testing of high-compliance corporate financial platforms.
* **Access Control & RBAC Auditing:** Testing persona-based conditional rendering (Retail vs. Institutional vs. Financial Professional).
* **Session & Cookie Diagnostics:** Verifying authentication token persistence, local storage hooks, and browser lifecycle states via Chrome DevTools.
* **Exploratory Testing:** Designing boundary scenarios around financial document search, gated whitepapers, and regulatory disclosures.

---
*Created as part of the QA Portfolio — Aleksandra Savostianova*
