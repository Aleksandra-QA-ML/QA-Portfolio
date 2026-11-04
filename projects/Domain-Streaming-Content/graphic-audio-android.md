# Graphic Audiobooks & Digital Media Android App

## Overview
Functional, exploratory, and smoke testing of an Android audio streaming application. The primary focus of the test cycle was verifying core audio playback stability, regression bug fixes in a new build, and offline media availability.

## Testing Scope & Objectives
* **Build Verification & Regression:** Validated resolved defects related to the audio player engine, UI synchronization, and process termination.
* **Offline Playback & Local Storage:** Verified media playback in Airplane Mode, ensuring the player resolves downloaded local assets instead of attempting network streaming, with accurate error messaging for non-downloaded content.
* **Audio Controls & Background Persistence:** Tested 30s fast-forward/rewind, sleep timer triggers, and playback speed persistence across app restarts.
* **Hardware & System Integration:** Verified notification drawer tap behaviors and Android Auto menu integrations.

## Environment & Tools
* **Device:** Google Pixel (Android)
* **Tools:** Android Debug Bridge (`adb logcat`), Chrome DevTools, Bash
* **Testing Types:** Exploratory Testing, Smoke Testing, Functional Verification, Regression Testing

## Identified Defects (100% Approval Rate)
All logged issues were verified and approved by the customer/TTL without rejections:

1. `[Collections]` Purchased content does not appear in user collections after successful transaction.
2. `[Filter]` The "Most Recent (default)" sorting option is missing from the filter dropdown.
3. `[Filter]` The "Cancel" action button is missing in the sort/filter modal.
4. `[Search]` Search reset results display incorrectly after clearing the input field.
5. `[Search]` Empty search request is handled improperly by the search view.
