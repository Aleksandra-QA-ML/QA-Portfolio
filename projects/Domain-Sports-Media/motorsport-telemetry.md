# Case Study: Global Video Production & OTT Subscription Architecture (Web & Android)

### 🎯 Project Overview

Full-scale functional verification and test case execution for an international tier-1 entertainment and video streaming platform. The cycle focused on verifying the end-to-end subscription lifecycle, payment processing gateways, and instant user entitlement synchronization across desktop and Android mobile devices.

### 📱 Test Environment

* **Platform:** Web Desktop & Android Mobile
* **OS / Browsers:** Windows 10 (Chrome) & Android
* **Scope:** Subscription Purchase Funnel, Free Trial Activation, Tier Upgrades, Payment Gateways, Cross-Platform Entitlement State

### 📊 Audit Summary & Status

* **Test Suite Execution:** 100% Completed (pre-defined test suites executed on uTest platform within strict time windows).
* **Billing Flow Compliance:** Verified zero-failure transactions across primary revenue paths and checkout journeys.
* **Traceability:** Authored step-by-step diagnostic documentation, attaching screencasts, console logs, and network state evidence.

### 🔍 Critical Findings (Bugs & Verification)

#### 1. [Access Control / Entitlement Sync] — Instant Content Unlocking Verification
* **Scope:** Audited account state transitions immediately following successful transaction processing. Confirmed that premium video catalogs unlocked instantly across authenticated sessions without caching delay or permission lockups.
* **Risk Mitigated:** High (Prevented customer churn, immediate chargebacks, and high-priority billing dispute tickets).

#### 2. [Checkout & Billing Logic] — Negative Scenarios & Payment Cancellation Recovery
* **Scope:** Validated system resilience during aborted payment attempts, declined transactions, and session timeouts. Ensured the application gracefully returned users to the plan selection stage without losing active cart parameters or generating orphan billing records.
* **Risk Mitigated:** High (Prevented cart drop-offs, visual application freezes, and invalid charge attempts).

#### 3. [Cross-Platform State] — Desktop vs. Mobile Entitlement Persistence
* **Scope:** Verified that subscription status and upgraded tier entitlements synchronized across web browser sessions and mobile devices without requiring manual logout/login cycles.
* **Risk Mitigated:** Medium (Eliminated entitlement discrepancies between multi-device household profiles).

### 🛠 Skills & Tools

* **Subscription & Billing QA:** Testing tier upgrades, trial activations, recurring cadences, and payment gateway UI/UX responses.
* **Cross-Platform Verification:** Auditing functional parity and entitlement synchronization across Web and Android ecosystems.
* **Traceability & Test Reporting:** Authoring detailed test execution logs, capturing network events, and documenting reproduction steps for high-security environments.
* **Negative & Boundary Testing:** Validating system recovery during failed transactions, payment timeouts, and cancellation paths.

---
*Created as part of the QA Portfolio — Aleksandra Savostianova*
