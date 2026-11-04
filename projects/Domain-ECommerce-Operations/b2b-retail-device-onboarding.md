# Case Study: B2B Retail & Hardware Onboarding Ecosystem (Web)

### 🎯 Project Overview

Full functional testing of a centralized B2B onboarding platform for unattended and attended retail businesses. The cycle focused on verifying multi-step setup workflows, hardware configuration wizards, logistics tracking, and functional state preservation when interacting with dynamic UI components (Language Switcher widget).

### 💻 Test Environment

* **Platform:** Web Desktop
* **OS:** Windows 10
* **Browser:** Google Chrome (Latest Stable)
* **Scope:** Device Setup Wizard, Account Provisioning, Configuration Protocols, Language Switcher Widget

### 📊 Audit Summary & Status

* **Functional Test Execution:** 100% Completed (device configuration wizard, input field validation, form submission).
* **State Persistence & Session Integrity:** Verified end-to-end setup flows under dynamic UI changes.
* **Defect Approval Rate:** 100% Approved (critical functional data-loss defect verified and accepted by the engineering team).

### 🔍 Critical Findings (Bugs)

#### 1. [Functional / State Reset] — Device List Resets on Language Switch
* **Defect:** In the Device Setup module, toggling the language via the Language Switcher triggers an unhandled component re-render, completely clearing all configured devices and associated protocols from the active form.
* **Risk:** High (Data loss during complex multi-device onboarding, user frustration, and broken workflow continuity).

#### 2. [Functional / Form Handling] — Unsaved Input Drop During UI Rerender
* **Defect:** Unsaved form entries and staged hardware configuration parameters fail to persist in the DOM/local state upon re-rendering triggered by UI widgets.
* **Risk:** Medium (Requires full manual re-entry of technical specifications and setup data).

### 🛠 Skills & Tools

* **Functional Web Testing:** End-to-end verification of complex B2B onboarding wizards and multi-parameter hardware configuration forms.
* **State Persistence Testing:** Validating form data retention, DOM updates, and session integrity during dynamic UI interactions.
* **Defect Isolation:** Investigating state-loss anomalies and component re-rendering issues via Chrome DevTools.
* **Desktop Browser Testing:** Ensuring consistent functional behavior across Windows 10 and Google Chrome.

---
*Created as part of the QA Portfolio — Aleksandra Savostianova*
