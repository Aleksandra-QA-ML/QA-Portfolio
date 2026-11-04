# Case Study: Digital Audiobooks & Media Engine Validation (Android)

### 🎯 Project Overview

Full-scale functional and exploratory testing of a native Android digital audiobook application, focusing on audio player engine stability, regression fixes, and offline local media persistence.

### 📱 Test Environment

* **Device:** Google Pixel 7
* **OS:** Android 17
* **Scope:** Core Audio Playback, Offline Airplane Mode, Filter & Search Engine, Android Auto Integration

### 📊 Audit Summary & Status

* **Smoke & Core Playback:** 100% Completed (audio seek controls, sleep timer, playback speed persistence).
* **Offline Mode Verification:** 100% Completed (local file resolution vs. streaming fallback logic in Airplane Mode).
* **Defect Approval Rate:** 100% Approved (5 out of 5 submitted bug reports verified by TTL/Customer).

### 🔍 Critical Findings (Bugs)

#### 1. [Data Loss / Synchronization] — Missing Purchased Content
* **Defect:** Purchased digital content does not appear in user collections following successful order completion.
* **Risk:** High (Direct customer churn, loss of revenue, and escalated customer support inquiries).

#### 2. [UI / Navigation Flaw] — Missing Default Sort Control
* **Defect:** The "Most Recent (default)" sorting option is completely absent from the collection filter dropdown menu.
* **Risk:** Medium (Degraded catalog navigation and failure to adhere to functional specifications).

#### 3. [UX / Modal Blocker] — Missing Cancel Action in Filter Modal
* **Defect:** The "Cancel" button is missing in the sort/filter dialog, preventing users from safely exiting without applying changes.
* **Risk:** Medium (User frustration and violation of standard Android modal control guidelines).

#### 4. [Search Display Anomaly] — Search Reset Rendering Glitch
* **Defect:** Clearing the search input field results in an incorrect visual rendering and blank state instead of restoring the default catalog view.
* **Risk:** Medium (Disrupted user search journey and broken state persistence).

#### 5. [Input Validation] — Improper Handling of Empty Query
* **Defect:** Submitting an empty search request causes unexpected application behavior and unhandled UI state.
* **Risk:** Low/Medium (Failure to implement graceful boundary/input validation).

### 🛠 Skills & Tools

* **Mobile Testing:** Android 17 verification, notification actions, and Android Auto integration checks.
* **Offline State Testing:** Validating storage persistence, local asset resolution, and network termination in Airplane Mode.
* **Log Analysis:** Capturing device telemetry, UI events, and stack traces via Android Debug Bridge (`adb logcat`).
* **Exploratory & Smoke Testing:** Designing boundary test scenarios for search, filtering, and checkout asset synchronization.

---
*Created as part of the QA Portfolio — Aleksandra Savostianova*
