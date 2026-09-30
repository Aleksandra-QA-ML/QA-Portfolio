# Android Todo App — Manual Testing & Quality Assurance Project

## 📌 Project Overview
Comprehensive manual testing of an offline Android Todo application. The project covers end-to-end quality assurance, including installation verification, core functional flows (CRUD), boundary value analysis, mobile-specific non-functional tests, and responsiveness checks on non-standard viewport configurations.

* **Target Application:** Todo List (Android native app)
* **Testing Environment:** Physical Device (Google Pixel 11 Pro, Android 17)
* **Test Management & Bug Tracking:** YouTrack (Custom Agile Scrum Board)
* **Artifacts:** Checklist, Test Cases, Bug Reports

---

## 🎯 Scope of Testing
1. **Installation & Lifecycle:**
   * Package installation from APK (enabled/disabled unknown sources).
   * System security notifications (legacy SDK compatibility warning).
   * Handling corrupted/incomplete APK binaries.
   * Clean uninstallation via System Settings and App Drawer.
2. **Data Validation & Boundary Value Analysis (BVA):**
   * Task title character limits: minimum and maximum boundary values (24, 25, 26 characters).
   * Character set validation: strict Cyrillic constraints vs non-Cyrillic input.
   * Whitespace trimming validation on creation and editing.
   * Task list capacity limits (9, 10, 11 tasks).
3. **Task Operations (CRUD):**
   * Asymmetric validation analysis between Task Creation and Task Modification.
4. **Mobile Usability & Responsiveness:**
   * Screen orientation changes (Portrait $\leftrightarrow$ Landscape) and state persistence.
   * System keyboard (Soft Keyboard) interaction and overlap handling.
   * UI scaling and responsiveness on constrained viewport widths (`320 dp`).

---

## 📊 Test Execution Summary
* **Total Checks Conducted:** 20+
* **Defects Discovered:** 6
  * **Critical:** 0
  * **Major:** 4 (BVA bypass on edit, whitespace bypass, layout overlap)
  * **Medium / Usability:** 2 (Restricted landscape viewport, legacy SDK warning)

---

## 🗂️ Project Artifacts
* [📋 Checklist](./check-list.md) — Comprehensive testing checklist covering all test areas and run results.
* [🧪 Test Cases](./test-cases.md) — Detailed test cases with preconditions, step-by-step instructions, and expected outcomes.
* [🐛 Bug Reports](./bugs.md) — Formal defect specifications with exact reproduction steps, severity, and root cause context.
