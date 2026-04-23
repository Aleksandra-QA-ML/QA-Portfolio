# Project: American Football Draft Tracker & Statistics Web-App

## 📋 Project Overview
Functional and UI/UX testing of a high-traffic web application designed for real-time tracking of professional football draft events. The testing focused on the stability of dynamic content, navigation logic, and server-side error handling during peak user activity.

* **Platform:** Web (Desktop)
* **Browser:** Google Chrome
* **OS:** Windows 10
* **Testing Type:** Functional, UI/UX, and Regression Testing

---

## 🛠 Testing Areas
* **Real-time Data Handling:** Verification of "Show Scores" toggles and live data synchronization.
* **Navigation Logic:** Testing pagination behavior and scroll-to-top functionality during deep list browsing.
* **UI/UX Integrity:** Identification of overlapping elements and layout shifts that impede user interaction.
* **Connectivity & Server Health:** Monitoring for broken endpoints and critical server errors (5xx).

---

## 🐞 Identified & Approved Bug Reports

| ID | Bug Summary | Severity | Type |
| :--- | :--- | :--- | :--- |
| 01 | **503 Service Unavailable** error when clicking footer navigation links | Critical | Functional |
| 02 | Page scroll does not reset to the top after switching pagination pages | Medium | UI/UX |
| 03 | Slow system response time when toggling the "Show Scores" filter | Medium | Performance |
| 04 | Promotional banner overlaps main navigation/content, blocking clicks | High | UI/Visual |
| 05 | Specific products in the carousel fail to load/navigate properly | Medium | Functional |

---

## 🎯 Key Achievements
* Identified a **critical server-side error (503)**, preventing potential data loss or broken user journeys in the footer section.
* Improved user experience by reporting a **pagination logic flaw** that hindered smooth navigation through long draft lists.
* Ensured visual stability by documenting **banner overlap issues** that affected core site functionality.

---
*Note: This project was conducted via uTest. 