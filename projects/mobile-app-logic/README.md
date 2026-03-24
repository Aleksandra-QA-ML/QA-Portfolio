# Case Study: Mobile App Content Logic & Authorization (Android 16)

## 🎯 Project Overview
Functional and business logic testing of a **native mobile application** during a high-density content stress test (250+ interactive items).

## 📱 Test Environment
* **Device:** Google Pixel 7
* **OS:** **Android 16 (Preview)**
* **Tools:** ADB (Android Debug Bridge), Logcat, Android Developer Options.

## 🔍 Key Investigations & Functional Findings

### 1. Intermittent Content Loading Issue (Authorized State)
* **The "Ghost Content" Bug:** Identified a critical, non-reproducible (intermittent) defect where an authorized user could see the UI shell (media covers), but the internal playable content failed to load.
* **Technical Action:** Documented the state transitions and provided system logs via **ADB Logcat** to help developers trace potential session handling or API race conditions.

### 2. Access Permissions & Business Logic (Age Restrictions)
* **Age-Restricted Filters:** Analyzed the behavior of content blocks across different user states (Guest vs. Authorized). 
* **Discrepancy Investigation:** Identified a potential inconsistency where age-restricted content displayed a "Content Block" on the cover page. Investigated whether this was a functional UI bug or a deliberate business rule for session-based masking.

### 3. High-Density Data Stability (253 Items)
* **Performance Check:** Verified the stability of the native app when rendering 253 rows of content in a single scrollable view.
* **Result:** **No performance degradation or scrolling issues observed**, confirming robust front-end optimization and efficient memory management on Android 16.

## 🛠 Skills Demonstrated
* **Mobile Edge Case Discovery:** Capturing rare, one-time session bugs in a native environment.
* **Business Logic Analysis:** Validating complex permission levels and age-restriction filters.
* **Android 16 Compatibility:** Testing app stability on the latest OS developer preview.

## 🛡 Security & NDA Compliance
* **Data Privacy:** All 253 rows of content, media covers, and user dialogues have been **fully redacted (blurred)**.
* **Compliance:** No proprietary names or private project data are disclosed in this case study.

---
*Created as part of the QA Portfolio — Aleksandra Savostyanova*

<img width="1080" height="2399" alt="Screenshot_20260321-143253-redacted_dot_app-redacted_dot_app" src="https://github.com/user-attachments/assets/2a2ba29d-54d0-40d4-ac13-8b6038a10d47" />
<img width="1080" height="2399" alt="Screenshot_20260320-171227-redacted_dot_app" src="https://github.com/user-attachments/assets/a1a9ab02-2e08-4e07-9642-29f0c94651ff" />
<img width="1080" height="2399" alt="Screenshot_20260320-171143-redacted_dot_app" src="https://github.com/user-attachments/assets/722569c2-9e0e-4c15-bd41-2a3385799028" />
