# Case Study: OTT Streaming & Subscription Lifecycle Verification (Android)

### 🎯 Project Overview

Production deployment smoke testing and exploratory verification for a major global video streaming platform. The testing cycle focused on subscription billing funnels, plan transitions (upgrade/downgrade), and payment gateway validation across real Android mobile environments.

### 📱 Test Environment

* **Device:** Google Pixel 7
* **OS:** Android 14 / 15
* **Target Geo:** United States (USA)
* **Scope:** Sign-Up, Plan Picker, Billing Cadence, Payment Methods (Visa, Mastercard, AMEX, PayPal, Google Pay), Account Screen

### 📊 Audit Summary & Status

* **Production Smoke Execution:** 100% Completed (post-deployment verification of critical paths and checkout funnels).
* **Payment Gateway Verification:** Validated multi-tier payment methods and purchase flow responsiveness.
* **Defect Reproduction & +1 Validation:** Actively corroborated confirmed defects to accelerate triaging for the engineering team.

### 🔍 Critical Findings (Bugs)

#### 1. [Functional / State Persistence] — Subscription Plan Display Mismatch Post-Upgrade
* **Defect:** Following a successful subscription tier upgrade from Basic to Standard/Premium, the Account Screen fails to refresh immediately, retaining the previous subscription tier until forced cache clearing or cold restart.
* **Risk:** High (Customer confusion, duplicate purchase attempts, and increased volume of billing dispute tickets).

#### 2. [UI / Billing Cadence] — Plan Picker Responsiveness Under Dynamic Switching
* **Defect:** Rapidly toggling between monthly and annual billing cadences caused a temporary desynchronization between displayed pricing and selected tier perks.
* **Risk:** Medium (Potential misrepresentation of pricing tiers prior to checkout confirmation).

### 🛠 Skills & Tools

* **Mobile Testing:** Production smoke testing on Google Pixel (Android ecosystem).
* **Subscription & Billing Logic:** Testing multi-tier plan selections, billing cadences, and account profile entitlement state.
* **Payment Gateway Verification:** End-to-end checkout paths across diverse payment providers (Google Pay, Credit Cards, PayPal).
* **Defect Isolation & Diagnostics:** Root cause investigation, environment parameter tracking, and system state persistence analysis.

---
*Created as part of the QA Portfolio — Aleksandra Savostianova*
