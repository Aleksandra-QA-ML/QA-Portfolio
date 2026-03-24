# Case Study: Cross-Platform UI/UX Testing for Sports Streaming Platform

## 🎯 Project Overview
Functional and UI/UX testing of a sports streaming web-service across Desktop (Windows 10) and Mobile (Android 16) environments.

## 💻 Environments & Tools
* **Desktop:** Windows 10 | Chrome & Edge (Main investigation via **DevTools**).
* **Mobile:** Google Pixel 7 | **Android 16 (Preview)**.
* **Tools:** Chrome DevTools (Elements, Console, Network), ADB Logcat.

## 🔍 Key Findings & Technical Analysis

### 1. UI Navigation & Menu Issues (Windows 10)
* **Missing Menu Elements:** Identified cases where navigation menus failed to render or disappeared after interaction.
* **Investigation:** Used **DevTools Elements panel** to inspect DOM nodes. Found that elements were present in the HTML but hidden due to incorrect CSS class toggling during state changes.

### 2. Interaction Defects (Sticky Highlights)
* **Issue:** "Sticky" button highlights (hover/active states) that remained active even after the cursor moved away or the action was completed.
* **Analysis:** Verified event listeners and CSS pseudo-classes (`:hover`, `:active`) via DevTools to confirm that state transitions were not being cleared correctly by the application's JavaScript.

### 3. System Stability (Android 16)
* **Compatibility Check:** Verified the web-service behavior on the latest **Android 16 Preview**.
* **Logs:** Collected and analyzed **ADB Logcat** to ensure no critical background crashes occurred during these UI glitches.

## 🛡 Security & NDA
* All proprietary content and user dialogues have been **redacted** to comply with Non-Disclosure Agreements.
