# Case Study: Mobile Performance Profiling (Jank & Rendering Analysis)

## 🎯 Project Overview
In-depth performance analysis of a mobile application to identify UI stuttering (Jank) during high-load rendering scenarios on the latest Android hardware.

## 📱 Test Environment
* **Device:** Google Pixel 7
* **OS:** **Android 16 (Preview)**
* **Tooling:** Android Developer Options (HWUI Profiling), ADB Logcat.

## 🔍 Investigation: The "Jank" Defect
While executing standard test cases, I identified subtle visual stutters during content transitions. I moved beyond visual observation to provide data-driven evidence.

### 1. GPU Rendering Analysis (HWUI)
* **Method:** Enabled **"Profile HWUI Rendering"** to monitor the frame rendering pipeline in real-time.
* **Findings:** Captured consistent "spikes" in the bars representing the **Process/Execute** stages.
* **Technical Evidence:** Documented frames exceeding the **16.6ms threshold** (the green line), which causes the system to skip frames, resulting in a non-smooth user experience.

### 2. Log Correlation
* **Action:** Filtered **ADB Logcat** for "Choreographer" events.
* **Result:** Confirmed the system was dropping frames due to heavy processing on the main thread, providing developers with a specific timeframe for the performance dip.

## 🛠 Skills & Tools
* **Performance Testing:** Identifying UI performance bottlenecks that are often missed during functional testing.
* **Advanced Android Debugging:** Expert use of Developer Options and hardware-level profiling.
* **Data-Driven Reporting:** Transforming a subjective "it feels laggy" into an objective "rendering exceeds 16.6ms per frame."

## 🛡 Security & NDA Compliance
* **Anonymization:** All application content and identifiable UI elements have been **redacted**. 
* **Focus:** The focus of this case study is strictly on the **GPU Profiling graphs** and the technical methodology used.

---
*Created as part of the QA Portfolio — Aleksandra Savostyanova*
![GPU Performance Evidence](./projects/mobile-performance-jank/Visible stuttering_3.1.png)
