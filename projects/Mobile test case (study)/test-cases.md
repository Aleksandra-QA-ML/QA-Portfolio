# Test Cases Specification

## 1. Subsystem: Installation

### MOB-1: Install mobile app via downloaded APK file with enabled installation from unknown sources
* **Priority:** Critical | **Type:** Task | **State:** In Progress | **Subsystem:** Installation
* **User Story:** As a user, I want to install the mobile app via a downloaded APK file so that I can use the application on my phone
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The APK file of the application is already downloaded to the device's "Downloads" folder.
  2. Permission to install unknown apps is granted for the Files/Browser applications.
* **Steps:**
  1. Open the file manager and navigate to the "Downloads" folder.
  2. Tap on the apk file to start installation process.
  3. Confirm the installation by tapping "Install" in the system pop-up.
  4. Tap the "Open" button on the completion screen.
* **Expected Results:**
  1. The "Downloads" folder is opened with the installation APK file.
  2. The popup window to start installation is displayed.
  3. Installation is started successfully.
  4. The application is launched successfully.

---

### MOB-2: Install mobile app via downloaded APK file with disabled installation from unknown sources
* **Priority:** Critical | **Type:** Task | **State:** Done | **Subsystem:** Installation
* **User Story:** As a user, I want to install the mobile app via a downloaded APK file so that I can use the application on my phone
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The APK file of the application is already downloaded to the device's "Downloads" folder.
  2. Permission to install unknown apps is disabled for the Files/Browser applications.
* **Steps:**
  1. Open the file manager and navigate to the "Downloads" folder.
  2. Tap on the apk file to start installation process.
* **Expected Results:**
  1. The "Downloads" folder is opened with the installation APK file.
  2. The system pop-up prompting to enable "Install unknown apps" permission is displayed.

---

### MOB-3: Install mobile app via a corrupted APK file
* **Priority:** Critical | **Type:** Task | **State:** Done | **Subsystem:** Installation
* **User Story:** As a user, I want to install the mobile app via a downloaded APK file so that I can use the application on my phone
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The APK file of the application is downloaded to the device's "Downloads" folder with error.
* **Steps:**
  1. Open the file manager and navigate to the "Downloads" folder.
  2. Tap on the apk file to start installation process.
* **Expected Results:**
  1. The "Downloads" folder is opened with the installation APK file.
  2. The popup window with the error message "Unsupported file format" is displayed.

---

### MOB-10: Uninstall the application via App Drawer
* **Priority:** Major | **Type:** Task | **State:** Done | **Subsystem:** Installation
* **User Story:** As a user, I want to uninstall the mobile app via App Drawer so that I can remove it from my phone
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The app is installed.
  2. The application is displayed on the App Drawer.
* **Steps:**
  1. Locate the app icon in the App Drawer.
  2. Perform a long-press on the app icon and select "Uninstall".
  3. Confirm the uninstallation.
* **Expected Results:**
  1. The shortcut menu is displayed.
  2. The confirmation pop-up is displayed.
  3. The app is uninstalled.

---

### MOB-11: Uninstall the application via System Settings
* **Priority:** Major | **Type:** Task | **State:** Done | **Subsystem:** Installation
* **User Story:** As a user, I want to uninstall the mobile app via System Settings so that I can remove the application from my phone
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The app is installed.
  2. The application is displayed on the App Drawer.
* **Steps:**
  1. Open the phone's Settings and navigate to Apps / Manage Apps.
  2. Locate the app and tap "Uninstall".
  3. Confirm the uninstallation.
* **Expected Results:**
  1. The app settings page is opened.
  2. The confirmation pop-up is displayed.
  3. The app is uninstalled.

---

## 2. Subsystem: Connection

### MOB-7: Verify application functionality via Airplane mode
* **Priority:** Normal | **Type:** Task | **State:** Done | **Subsystem:** Connection
* **User Story:** As a user, I want to use the mobile app offline so that I can use the app without internet
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The app is installed.
  2. Airplane mode is turned on.
  3. The tested app is launched.
* **Steps:**
  1. View the main screen of the application.
  2. Add a new task (e.g., "Тестовая задача").
  3. Edit an existing task (change title to "Измененная задача").
  4. Delete a task from the list.
* **Expected Results:**
  1. The application interface is displayed correctly.
  2. The task is successfully added to the list.
  3. The task is successfully updated in the list.
  4. The task is removed from the list.

---

## 3. Subsystem: UI & Compatibility

### MOB-27: UI layout integrity and element preservation upon screen rotation
* **Priority:** Major | **Type:** Task | **State:** Done | **Subsystem:** UI & Compatibility
* **User Story:** As a user, I want to use the application in different screen modes
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The application is running on standard screen width (~390–411 dp).
  2. Auto-rotate is enabled.
  3. At least 2 tasks are added to the list.
* **Steps:**
  1. Observe the UI layout in Portrait mode (input field, "Добавить задачу" button, hint text, task list).
  2. Enter unsubmitted Cyrillic text into the input field (e.g., "Тестовая задача").
  3. Rotate the device to Landscape orientation.
  4. Observe elements layout, text field, and task list.
  5. Rotate the device back to Portrait orientation.
* **Expected Results:**
  1. All UI elements (input field, action button, hint, task cards) are properly aligned and fully visible without overlapping in both orientations.
  2. Unsubmitted text in the input field is preserved during screen rotation.
  3. Task list remains accessible and fully intact.

---

### MOB-28: UI layout responsiveness and list visibility on small screen width (320 dp)
* **Priority:** Major | **Type:** Task | **State:** In Progress | **Subsystem:** UI & Compatibility
* **User Story:** As a user, I want to use the application on small screen width (320 dp)
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. Device Developer Options are enabled.
  2. "Smallest width" is set to 320 dp.
  3. The application is launched.
* **Steps:**
  1. In Portrait mode, add 3 tasks with a long title (24–25 characters) that wraps into two lines.
  2. Observe list items layout.
  3. Rotate the device to Landscape mode.
  4. Attempt to view and scroll the task list.
* **Expected Results:**
  1. **Portrait mode:** Multi-line task items dynamically adjust container height so that subsequent tasks do not overlap or obscure text.
  2. **Landscape mode:** Input controls and task list scale appropriately or allow vertical scrolling, ensuring all tasks remain visible and accessible.

---

## 4. Subsystem: Launch and work

### MOB-12: Add a task using Cyrillic characters
* **Priority:** Normal | **Type:** Task | **State:** Done | **Subsystem:** Launch and work
* **User Story:** As a user, I want to add a task using Russian letters so that it is visible in the list
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The application is installed and launched.
  2. The text input field is empty.
* **Steps:**
  1. Tap the text input field.
  2. Enter Cyrillic text (e.g., "Тестовая задача").
  3. Tap the "Добавить задачу" button.
* **Expected Results:**
  1. The keyboard appears, and the entered Cyrillic text is displayed in the input field.
  2. The task is added to the list.
  3. The input field is cleared.

---

### MOB-13: Add a task using non-Cyrillic characters
* **Priority:** Normal | **Type:** Task | **State:** Done | **Subsystem:** Launch and work
* **User Story:** As a user, I want to be notified when entering non-Cyrillic characters so that only Cyrillic text is accepted
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The application is installed and launched.
  2. The text input field is empty.
* **Steps:**
  1. Enter non-Cyrillic text (e.g., Latin letters, numbers, or special symbols).
  2. Tap the "Добавить задачу" button.
* **Expected Results:**
  1. The text is displayed in the input field.
  2. The validation pop-up "Задача должна быть на русском языке" is displayed.
  3. The task is not added to the list.

---

### MOB-14: Attempt to add an empty task
* **Priority:** Normal | **Type:** Task | **State:** In Progress | **Subsystem:** Launch and work
* **User Story:** As a user, I want to prevent adding blank tasks so that empty entries do not clutter my list
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The application is installed and launched.
  2. The text input field is empty.
* **Steps:**
  1. Ensure the text input field is empty (or contains only spaces).
  2. Tap the "Добавить задачу" button.
* **Expected Results:**
  1. The validation pop-up "Задача не может быть пустой" is displayed.
  2. No task is added to the list.

---

### MOB-16: Edit the task using non-Cyrillic characters
* **Priority:** Normal | **Type:** Task | **State:** In Progress | **Subsystem:** Launch and work
* **User Story:** As a user, I want to be notified when editing the task using non-Cyrillic characters so that I know only Russian text is accepted
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The application is installed and launched.
  2. The task list contains at least one task.
* **Steps:**
  1. Perform a long press on an existing task in the list to enter edit mode.
  2. Edit the task by replacing the text with non-Cyrillic characters (e.g., Latin letters, numbers, or special symbols).
  3. Confirm editing by tapping "Сохранить".
* **Expected Results:**
  1. The validation pop-up "Задача должна быть на русском языке" is displayed.
  2. The task is not updated.

---

### MOB-18: Edit the task using Cyrillic characters
* **Priority:** Normal | **Type:** Task | **State:** Done | **Subsystem:** Launch and work
* **User Story:** As a user, I want to be notified when editing the task using Cyrillic characters so that I know only Russian text is accepted
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The application is installed and launched.
  2. The task list contains at least one task.
* **Steps:**
  1. Perform a long press on an existing task in the list to enter edit mode.
  2. Edit the task by entering valid Cyrillic text (e.g., "Обновленная задача").
  3. Confirm editing by tapping "Сохранить".
* **Expected Results:**
  1. The task is successfully updated with the new Cyrillic text in the list.
  2. The edit modal/dialog is closed.

---

### MOB-19: Attempt to edit the task leaving the empty title
* **Priority:** Normal | **Type:** Task | **State:** Done | **Subsystem:** Launch and work
* **User Story:** As a user, I want to receive a warning when editing the task so that empty entries do not clutter my list
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The application is installed and launched.
  2. The task list contains at least one task.
* **Steps:**
  1. Perform a long press on an existing task in the list to enter edit mode.
  2. Clear the input field completely (leave it empty).
  3. Tap the "Сохранить" button.
* **Expected Results:**
  1. The validation pop-up "Поле не может быть пустым" is displayed.
  2. The task is not updated.

---

### MOB-20: Add a task using Cyrillic characters with valid length
* **Priority:** Normal | **Type:** Task | **State:** Done | **Subsystem:** Launch and work
* **User Story:** As a user, I want to add a task using 24-25 Russian letters so that it appears in my list
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The application is installed and launched.
  2. The main screen is displayed, and the text input field is empty.
* **Steps:**
  1. Enter 24 and 25 Cyrillic characters.
  2. Tap the "Добавить задачу" button.
* **Expected Results:**
  1. The task is successfully added to the list.
  2. The input field is cleared.

---

### MOB-21: Add a task using Cyrillic characters with invalid length
* **Priority:** Normal | **Type:** Task | **State:** Done | **Subsystem:** Launch and work
* **User Story:** As a user, I want to be notified when adding 26 or more Russian letters so that it appears in my list
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The application is installed and launched.
  2. The main screen is displayed, and the text input field is empty.
* **Steps:**
  1. Enter 26 Cyrillic characters.
  2. Tap the "Добавить задачу" button.
* **Expected Results:**
  1. The validation pop-up "Длина задачи должна быть не более 25 символов" is displayed.
  2. The task is not added to the list.

---

### MOB-22: Edit the task using with valid title length
* **Priority:** Normal | **Type:** Task | **State:** Done | **Subsystem:** Launch and work
* **User Story:** As a user, I want to be notified when editing the task using 24-25 characters title length
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The application is installed and launched.
  2. The main screen is displayed, and the text input field is empty.
  3. Long press on the task.
* **Steps:**
  1. Clear the title.
  2. Enter 24 and 25 Cyrillic characters.
  3. Tap the "Сохранить" button.
* **Expected Results:**
  1. The task is successfully updated with 24 and 25 Cyrillic characters.

---

### MOB-23: Edit the task using with invalid title length
* **Priority:** Normal | **Type:** Task | **State:** In Progress | **Subsystem:** Launch and work
* **User Story:** As a user, I want to be notified when editing the task using 26+ characters title length
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The application is installed and launched.
  2. The main screen is displayed, and the text input field is empty.
  3. Long press on the task.
* **Steps:**
  1. Clear the title.
  2. Enter 26 Cyrillic characters.
  3. Tap the "Сохранить" button.
* **Expected Results:**
  1. The validation pop-up "Длина задачи должна быть не более 25 символов" is displayed.
  2. The task is not updated.

---

### MOB-25: Add a valid number of tasks
* **Priority:** Normal | **Type:** Task | **State:** Done | **Subsystem:** Launch and work
* **User Story:** As a user, I want to add 1–10 tasks to the list
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The application is installed and launched.
  2. The main screen is displayed, and the list has 0 tasks.
* **Steps:**
  1. Sequentially add up to 10 valid Cyrillic tasks.
* **Expected Results:**
  1. All 10 tasks are successfully added and visible in the list.

---

### MOB-26: Add an invalid number of tasks
* **Priority:** Normal | **Type:** Task | **State:** Done | **Subsystem:** Launch and work
* **User Story:** As a user, I want to be notified when adding 11 tasks in my list
* **Environment:** Google Pixel 11 Pro, Android 17
* **Preconditions:**
  1. The application is installed and launched.
  2. The main screen is displayed, and the list has 10 tasks.
* **Steps:**
  1. Enter a valid Cyrillic title in the input field.
  2. Tap the "Добавить задачу" button to attempt adding the 11th task.
* **Expected Results:**
  1. The validation pop-up "Нельзя добавить больше 10 задач" is displayed.
  2. The 11th task is not added to the list.
