# Case Study: Photo Framing & Custom Print Platform (Web / mWeb)

### 🎯 Project Overview

Comprehensive staging regression and exploratory test cycle for a custom framing, photo printing, and home-decor e-commerce platform. The testing focused on functional parity and stability between the updated release build and the active staging baseline across desktop and responsive mobile web (mWeb), with primary emphasis on heavy media upload flows, interactive designers, and checkout pipelines.

### 💻 Test Environment

* **Platform:** Responsive Web & Mobile Web (mWeb)
* **OS / Browsers:** Windows 10 (Chrome) & Android Mobile Web
* **Scope:** Photo Upload & Local Persistence, Interactive Photo Book Designer, Gallery Walls Funnel, Promo Code Engines, Browser History (Back/Forward Routing)

### 📊 Audit Summary & Status

* **Test Cycle Performance:** Ranked as **Test Score Leader** among cycle participants.
* **Defect Approval Rate:** **100% Approved** (2 out of 2 submitted bug reports verified by TTL/Customer).
* **Parity & Regression Audit:** Verified cross-environment consistency, cart transfer flows ("Gallery Walls → Bag"), and checkout payment logic.

### 🔍 Critical Findings (Bugs)

#### 1. [Functional / Media Rendering] — Hero Video Freeze via Promo Code Deep Link
* **Defect:** Navigating to the homepage via a promotional campaign link (`?promo=...`) causes the main hero video player to freeze and lock the above-the-fold interface during initialization.
* **Risk:** High (High immediate bounce rate for paid advertising campaigns and degraded first-touch user experience).

#### 2. [Routing / History API] — Broken Browser Back Navigation in Photo Book Module
* **Defect:** Using the native browser "Back" button from subsequent steps redirects users back into the active photo book designer canvas instead of returning to the previous catalog/parent page, breaking standard browser history stack behavior.
* **Risk:** High (Frustrating navigation loops, potential loss of user-configured project states, and abandoned checkout flows).

### 🛠 Skills & Tools

* **Web & mWeb Functional Testing:** Validating responsive web layouts, cross-device parity, and interactive canvas tools (Photo Books, Gallery Walls).
* **Browser Navigation & Routing:** Testing HTML5 History API, deep linking parameters, and back/forward navigation state persistence.
* **Media & Upload Verification:** Auditing high-resolution asset uploads, local persistence across tabs, and video element playback.
* **E-Commerce Checkout Workflows:** Validating promotional code calculation logic, cart state transitions, and payment paths.

---
*Created as part of the QA Portfolio — Aleksandra Savostianova*
