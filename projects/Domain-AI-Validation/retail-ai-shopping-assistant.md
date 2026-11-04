# Case Study: Conversational AI Shopping Assistant & Multimodal Vision Validation (Web)

### 🎯 Project Overview

Full-scale exploratory testing and test case execution for an enterprise conversational AI shopping assistant embedded into a major home-improvement e-commerce platform. The feature bridges generative guidance with direct commerce, offering multimodal project calculations, plant identification/care plans via image uploads, review summarization, and in-store wayfinding.

### 💻 Test Environment

* **Platform:** Web Desktop
* **OS:** Windows 10 Home
* **Browser:** Google Chrome (Latest Stable)
* **Scope:** Conversational AI Chat Engine, Multimodal Image Uploads, Review Summarization on PDP, Cart & SKU Integration

### 📊 Audit Summary & Status

* **Test Cycle Performance:** Ranked as **Test Score Leader** across all participating QA engineers.
* **Defect Approval Rate:** **100% Approved** (all reported anomalies confirmed and accepted by the client engineering team).
* **AI & LLM Verification:** Validated model hallucination boundaries, prompt handling, context persistence, and cross-session memory leaks.

### 🔍 Critical Findings (Bugs)

#### 1. [Context Leakage / Session Integrity] — Cross-Session Memory Bleed
* **Defect:** Following a chat session reset/clearing, historical conversation responses from the previous context leaked into newly initiated chat threads.
* **Risk:** High (Data privacy vulnerability, severe conversational hallucination, and broken context isolation across user sessions).

#### 2. [Multimodal Vision Failure] — Generic Output Instead of Tailored Vision Analysis
* **Defect:** Uploading plant photography yielded generic, hardcoded template advice instead of generating an image-grounded care, sunlight, and safety plan.
* **Risk:** High (Degraded customer trust in computer-vision capabilities and failure to deliver advertised core value).

#### 3. [Navigation Loop / Functional Blocker] — PDP Review Summarization Redirection Failure
* **Defect:** Invoking the review summarization prompt on the Product Detail Page (PDP) failed to generate a summary and caused an infinite redirect loop back to the root page.
* **Risk:** High (Blocked research flow, user frustration, and failure to bridge product feedback with purchase decisions).

#### 4. [Input Boundary / UI Defect] — Input Field Overwrites Text on Character Limit Overflow
* **Defect:** Exceeding the maximum allowed character limit in the query field caused the cursor to jump and overwrite existing text instead of truncating or throwing an input validation alert.
* **Risk:** Medium (Impaired UX for complex, multi-sentence project descriptions and contractor material manifests).

### 🛠 Skills & Tools

* **AI & LLM Output Validation:** Testing prompt boundaries, factual grounding, hallucination detection, context resets, and safety checks.
* **Multimodal System Testing:** Verifying computer vision flows and dynamic image processing pipelines.
* **E-Commerce Web Testing:** Auditing conversational commerce integrations, Product Detail Page (PDP) widgets, and catalog SKU binding.
* **Defect Isolation & Reporting:** Capturing reproduction steps, payload anomalies, and network events via Chrome DevTools.

---
*Created as part of the QA Portfolio — Aleksandra Savostianova*
