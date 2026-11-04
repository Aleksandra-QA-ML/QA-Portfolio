# Case Study: Official Football Club Mobile App (Android Native & Media Hub)

### 🎯 Project Overview

Comprehensive mobile exploratory and functional testing of the official native application for a premier professional football club. The cycle focused on live matchday fixtures (real-time telemetry and background audio streaming), multimedia news articles, merchandise e-commerce catalog integration, and roster discovery across Android handheld devices.

### 📱 Test Environment

* **Device:** Google Pixel 7
* **Platform:** Android Native App
* **Scope:** Live Scoreboard & Commentary Audio, Club Shop (PDP/Cart), Roster Profiles, News Articles ("Scroll to Top"), Push Notifications

### 📊 Audit Summary & Status

* **Cycle Execution:** 100% Completed (Live Match Center, News Carousels, Club Merchandise Store, Roster Directory).
* **Audio & Background Persistence:** Verified uninterrupted background playback of live commentary audio streams during multitasking.
* **Defect Approval Rate:** **100% Approved** (3 out of 3 submitted bug reports verified and accepted by cycle TTLs).

### 🔍 Critical Findings (Bugs)

#### 1. [E-Commerce / Pricing Integrity] — Price Discrepancy Between Catalog Listing and PDP
* **Defect:** In the integrated Club Shop, the price displayed for merchandise in the main category catalog contradicts the price shown on the Product Details Page (PDP).
* **Risk:** High (Direct customer confusion, perceived deceptive pricing, high cart abandonment, and customer service escalation).

#### 2. [UI / Responsive Layout] — Roster Profile Media Tab Text Cut Off by Viewport Edge
* **Defect:** Within individual player biographies under the Discover section, text strings inside the "Media" tab are misaligned and truncated by the right screen margin.
* **Risk:** Medium (Impaired content readability, unpolished UI presentation, and poor visual quality for club media assets).

#### 3. [UX / Touch Event Interception] — "Scroll to Top" Button Fails on First Tap
* **Defect:** On long-form club news articles, the floating "Scroll to Top" button fails to register the initial user tap, requiring a second interaction to trigger viewport scrolling.
* **Risk:** Medium (Unresponsive UI feel, laggy gesture handling, and degraded reading experience during dynamic content exploration).

### 🛠 Skills & Tools

* **Native Mobile Testing:** Testing background audio services, real-time score updates, and gesture responsiveness on Android (Google Pixel).
* **E-Commerce Integration Auditing:** Validating pricing state synchronization between catalog listing endpoints and individual PDP views.
* **Responsive Layout Inspection:** Identifying viewport truncation, safe-area boundary overlaps, and alignment glitches across mobile screens.
* **Touch Event Validation:** Diagnosing click/tap listener responsiveness, gesture propagation, and scroll-to-top behaviors.

---
*Created as part of the QA Portfolio — Aleksandra Savostianova*
