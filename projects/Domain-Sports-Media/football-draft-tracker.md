# Case Study: American Football Draft Tracker & Live Statistics Web Platform

### 🎯 Project Overview

Functional, UI/UX, and regression testing for a high-traffic sports web platform dedicated to live draft tracking, real-time player scoring, and statistical feeds. The cycle focused on verifying interface stability, dynamic DOM synchronization, pagination state management, and server-side fault tolerance under simulated peak live-event loads.

### 💻 Test Environment

* **Platform:** Web Desktop
* **OS:** Windows 10
* **Browser:** Google Chrome (Latest Stable)
* **Scope:** Real-Time Scoring Toggles, Pagination & Scroll Anchors, Carousel Navigation, Promotional Banners, Server Connectivity & Error Handling

### 📊 Audit Summary & Status

* **Functional & Regression Execution:** 100% Completed (pre-defined test suites and exploratory testing on uTest).
* **Defect Approval Rate:** 100% Approved (5 out of 5 submitted bug reports verified and accepted by the client engineering team).
* **Network & DOM Inspection:** Monitored HTTP response statuses (5xx/4xx), layout shifts, and event listener lag using Chrome DevTools.

### 🔍 Critical Findings (Bugs)

#### 1. [Server Stability / Functional Blocker] — 503 Service Unavailable on Footer Navigation
* **Defect:** Accessing key footer navigation links triggered a persistent `503 Service Unavailable` error, indicating an unhandled server-side route failure.
* **Risk:** High (Broken critical user journeys, negative impact on SEO indexing, and loss of traffic to secondary portal pages).

#### 2. [Visual UI / Click Interception] — Promotional Banner Overlaps Primary Navigation
* **Defect:** Sticky promotional banner failed to compute dynamic viewport z-index, causing it to overlap the main header and intercept user click events intended for the primary navigation menu.
* **Risk:** High (Directly blocked users from navigating the site, creating perceived unresponsive UI states).

#### 3. [UX / Navigation Logic] — Page Scroll Fails to Reset to Top on Pagination Switch
* **Defect:** Advancing to the next page in long player lists maintained the current scroll position at the bottom of the viewport instead of smoothly resetting to the top of the data table.
* **Risk:** Medium (Forced unnecessary manual scrolling across deep catalogs, degrading real-time draft analysis).

#### 4. [Performance / UI Latency] — Significant UI Latency on "Show Scores" Toggle
* **Defect:** Toggling the live "Show Scores" filter caused a noticeable multi-second rendering freeze while parsing updated state without displaying an asynchronous loading indicator.
* **Risk:** Medium (Perceived application unresponsiveness during fast-paced live draft broadcasts).

#### 5. [Functional / Carousel Integrity] — Specific Carousel Cards Fail to Resolve Links
* **Defect:** Target promotional cards within the content carousel failed to load asset media and refused to trigger destination route handlers on click.
* **Risk:** Medium (Degraded content discovery and broken engagement funnels).

### 🛠 Skills & Tools

* **Web Functional & UI/UX Testing:** Cross-checking interactive widgets, carousel components, and promotional banner layouts.
* **Network Diagnostics:** Monitoring HTTP traffic, backend API responses, and server error codes (`503 Service Unavailable`) via Chrome DevTools Network panel.
* **Navigation & Viewport State:** Auditing scroll positions, window anchor hooks, and pagination logic on long data feeds.
* **Performance Assessment:** Identifying rendering bottlenecks, DOM reflows, and filter latency during dynamic state changes.

---
*Created as part of the QA Portfolio — Aleksandra Savostianova*
