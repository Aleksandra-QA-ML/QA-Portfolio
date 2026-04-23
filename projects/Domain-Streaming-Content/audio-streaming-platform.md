# Case Study: Media Content Audit & Authorization Logic (VOD & Audio)

## 🎯 Project Overview
Full-scale content audit of a hybrid media mobile application, focusing on access rights, session persistence, and regional licensing (geo-blocking) under high-density data (250+ items).

## 📱 Test Environment
* **Device:** Google Pixel 7
* **OS:** **Android 16 (Preview)**
* **Scope:** 253 VOD Content Items (Series, Movies, Live streams) + Premium Audio Library (Podcasts, Audiobooks).

## 📊 Audit Summary & Status
* **VOD Guest Mode:** 100% Completed (253/253 items verified).
* **VOD Authorized Mode:** 71% Completed (179/253 items).
  - *Note: Testing was suspended due to critical functional blockers.*
* **Audio Geo-blocking:** 100% Completed (3 specialized test cases executed).

## 🔍 Critical Findings (Bugs)

### 1. [Access Bypass] - Session Caching Issue
* **Defect:** Identified a caching flaw that allowed playback of locked/premium content after one successful authorized session, even if permissions changed or expired.
* **Risk:** High (Revenue loss / Security bypass).

### 2. [Licensing Failure] - Audio Geo-blocking Leak
* **Defect:** **2 out of 3 Bug Reports Approved.** Identified flaws in geofencing logic that allowed unauthorized access to premium Podcasts and Audiobooks outside licensed territories.
* **Risk:** High (Legal/Contractual violations with content providers).

### 3. [Functional Defect] - Missing Assets in Authorized State
* **Defect:** Critical UI failure where logged-in users saw "Empty UI" (missing play buttons/nested episodes) for items that were perfectly visible and functional in Guest Mode.

## 🛠 Skills & Tools
* **Large-Scale Audit:** Executing verification cycles for **250+ units** of content.
* **Geo-blocking & Licensing:** Validating regional access logic for global media distribution.
* **Android 16 Testing:** Validating app behavior on the latest OS build.
* **Security Testing:** Identifying access bypasses and session vulnerabilities.

---
*Created as part of the QA Portfolio — Aleksandra Savostyanova*


