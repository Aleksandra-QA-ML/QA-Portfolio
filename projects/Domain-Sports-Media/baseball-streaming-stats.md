# Case Study: Sports Streaming Platform UI/UX & Navigation Stability (Web & Android)

### 🎯 Project Overview

Cross-platform functional and UI/UX testing for a high-traffic sports streaming web service. The cycle focused on live event navigation latency, DOM state persistence, interactive button states, and platform stability across desktop browsers and Android environments.

### 📱 Test Environment

* **Desktop:** Windows 10 | Google Chrome & Microsoft Edge
* **Mobile:** Google Pixel 7 | Android 16 (Preview)
* **Tools:** Chrome DevTools (Elements, Console, Network), Android Debug Bridge (`adb logcat`)
* **Scope:** Live Event Navigation, Sticky UI States, DOM State Toggling, Background System Stability

### 📊 Audit Summary & Status

* **Test Suite Execution:** 100% Completed (pre-defined test suites executed on uTest platform).
* **Defect Approval Rate:** **100% Approved** (6 out of 6 submitted bug reports verified and accepted by the Project Manager/TTL).
* **DOM & Event Inspection:** Investigated CSS pseudo-classes, DOM node visibility, and event listeners under rapid user interactions.

### 🔍 Critical Findings (Bugs)

#### 1. [UI / DOM State Failure] — Navigation Menu Disappears Due to Unhandled CSS Class Toggling
* **Defect:** Navigation menus failed to render or disappeared after interaction. Inspection via DevTools Elements confirmed DOM nodes were present in the markup but visually hidden due to faulty CSS class toggling during state transitions.
* **Risk:** High (Blocks user access to live sports broadcasts, event schedules, and channel navigation during high-traffic streaming).

#### 2. [UX / State Retention] — "Sticky" Button Highlights Persist Post-Interaction
* **Defect:** Interactive buttons retained active/hover visual styling even after cursor focus shifted or actions completed, caused by JavaScript event listeners failing to clear `:hover` and `:active` pseudo-classes.
* **Risk:** Medium (Visual confusion regarding active selection, degraded live-event interaction, and perceived latency).

#### 3. [OS Compatibility] — System Stability Verification on Android 16 Preview
* **Defect:** Monitored potential background thread crashes during UI rendering anomalies; collected and analyzed system logs via `adb logcat` to confirm zero critical runtime crashes on early preview builds.
* **Risk:** Medium (Proactive risk mitigation against breaking changes in upcoming Android releases).

### 🛠 Skills & Tools

* **Web UI/UX Testing:** Cross-browser verification across Chrome and Edge on Windows 10.
* **Front-End Diagnostics:** Deep DOM analysis, CSS state inspection, and event listener debugging via Chrome DevTools.
* **Mobile & OS Compatibility:** Validating web service performance on early preview builds (Android 16).
* **Log Analysis:** Capturing device runtime telemetry and crash diagnostics using `adb logcat`.

---
*Created as part of the QA Portfolio — Aleksandra Savostianova*
