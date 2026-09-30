# Bug Reports Registry (Defects)

---

### MOB-9: Legacy SDK compatibility warning during installation
* **Priority:** Minor
* **Type:** Bug
* **State:** To Verify
* **Subsystem:** Installation
* **Environment:** Google Pixel 11 Pro, Android 17

**Preconditions:**
1. The APK file of the application is already downloaded to the device's "Downloads" folder.
2. Permission to install unknown apps is granted for the Files/Browser applications.

**Steps to Reproduce:**
1. Open the file manager and navigate to the "Downloads" folder.
2. Tap on the apk file to start installation process.
3. Confirm the installation by tapping "Install" in the system pop-up.

**Expected Result:**
1. The "Downloads" folder is opened with the installation APK file.
2. The popup window to start installation is displayed.
3. Installation is started successfully.

**Actual Result:**
A system security/compatibility warning modal is displayed, warning that the application was built for an older Android version / is potentially unsafe, requiring the user to expand details and tap "Install anyway" to proceed.

<img width="320" alt="Screenshot_20260929-113454" src="https://github.com/user-attachments/assets/dd6d36ca-8495-4227-965d-f7e285510aef" />
<img width="320" alt="Screenshot_20260929-113508" src="https://github.com/user-attachments/assets/0a130c7b-7217-46de-aae9-0547a113080d" />

---

### MOB-15: Creation the task with empty title
* **Priority:** Major
* **Type:** Bug
* **State:** To Verify
* **Subsystem:** Launch and work
* **Environment:** Google Pixel 11 Pro, Android 17

**Preconditions:**
1. The application is installed and launched.
2. The main screen is displayed, and the text input field is empty.

**Steps to Reproduce:**
1. Ensure space characters only in the input field.
2. Tap the "Добавить задачу" button.

**Expected Result:**
1. No blank task is added to the list.
2. The validation pop-up "Задача не может быть пустой" is displayed.

**Actual Result:**
The task was created with an empty title.

<img width="320" alt="Screenshot_20260929-131906" src="https://github.com/user-attachments/assets/c96463fc-7d27-43e3-af76-6124acbdd614" />

---

### MOB-17: Successful edition the task using non-Cyrillic characters
* **Priority:** Major
* **Type:** Bug
* **State:** To Verify
* **Subsystem:** Launch and work
* **Environment:** Google Pixel 11 Pro, Android 17

**Preconditions:**
1. The application is installed and launched.
2. The task list contains at least one task.

**Steps to Reproduce:**
1. Perform a long press on an existing task in the list to enter edit mode.
2. Edit the task by replacing the text with non-Cyrillic characters (e.g., Latin letters, numbers, or special symbols).
3. Confirm editing by tapping "Сохранить".

**Expected Result:**
1. The task is not updated.
2. The validation pop-up "Задача должна быть на русском языке" is displayed.

**Actual Result:**
The task was successfully updated with non-Cyrillic characters.

<img width="320" alt="Screenshot_20260929-132750" src="https://github.com/user-attachments/assets/a8eab455-a624-4075-813a-012cd359a2cc" />

---

### MOB-24: Successful edit the task using invalid title length
* **Priority:** Major
* **Type:** Bug
* **State:** To Verify
* **Subsystem:** Launch and work
* **Environment:** Google Pixel 11 Pro, Android 17

**Preconditions:**
1. The application is installed and launched.
2. The main screen is displayed, and the text input field is empty.
3. Long press on the task.

**Steps to Reproduce:**
1. Clear the title.
2. Enter 26 Cyrillic characters.
3. Tap the "Сохранить" button.

**Expected Result:**
1. The task is not updated.
2. The validation pop-up "Длина задачи должна быть не более 25 символов" is displayed.

**Actual Result:**
The task was successfully updated with 26 characters.

<img width="320" alt="Screenshot_20260929-153319" src="https://github.com/user-attachments/assets/38507f5a-67d2-431d-bb12-e6d49f4e3827" />

---

### MOB-29: Task title in two lines overlaps with the subsequent list item on small screen widths (320 dp, Portrait mode)
* **Priority:** Major
* **Type:** Bug
* **State:** To Verify
* **Subsystem:** UI & Compatibility
* **Environment:** Google Pixel 11 Pro, Android 17

**Preconditions:**
1. Device Developer Options are enabled.
2. "Smallest width" is set to 320 dp.
3. The application is launched.
4. The list has 3 tasks with long titles (24–25 characters) that wrap into two lines.

**Steps to Reproduce:**
1. Observe the UI layout in Portrait mode (input field, "Добавить задачу" button, hint text, task list).

**Expected Result:**
Multi-line task items dynamically adjust container height so that subsequent tasks do not overlap or obscure text.

**Actual Result:**
The second task overlaps the two-line title of the first task; text is partially obscured.

<img width="320" alt="Screenshot_20260930-111738" src="https://github.com/user-attachments/assets/bc39edf8-44e7-4823-945c-4af05989174d" />

---

### MOB-30: Severe UI clutter and restricted task list viewport on 320 dp screen width in Landscape mode
* **Priority:** Minor
* **Type:** Bug
* **State:** To Verify
* **Subsystem:** UI & Compatibility
* **Environment:** Google Pixel 11 Pro, Android 17

**Preconditions:**
1. Device Developer Options are enabled.
2. "Smallest width" is set to 320 dp.
3. The application is launched.
4. The list has 3 tasks with long titles (24–25 characters) that wrap into two lines.

**Steps to Reproduce:**
1. Observe the UI layout in Landscape mode (input field, "Добавить задачу" button, hint text, task list).

**Expected Result:**
UI layout is optimized for Landscape orientation (e.g., input controls placed side-by-side or collapsible), leaving sufficient vertical space to view task list items comfortably.

**Actual Result:**
The task list is squeezed into an extremely narrow visible area between header/input controls and screen edges. Although scrollable, only a fraction of a task card is visible simultaneously, causing poor usability.

<img width="500" alt="Screenshot_20260930-111855" src="https://github.com/user-attachments/assets/560c47df-17cd-42b0-a990-dc5672e9d33b" />


