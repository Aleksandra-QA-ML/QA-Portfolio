# Чек-лист тестирования мобильного приложения (Todo App)

## 📌 Окружение и метаданные
* **Build:** 1
* **Test type:** Exploratory
* **Test date:** 24.09.2026
* **Project Environment:** Google Pixel 11 Pro
* **Operating System:** Android 17

---

## 📋 Таблица проверок

| Категория | Проверка (Check item) | Результат (Status) | Связанный баг (Bugs) |
| :--- | :--- | :---: | :---: |
| **Installation** | Installing APK with installation from unknown sources enabled | `failed` | MOB-9 |
| | Installing APK when installation from unknown sources is blocked | `ok` | — |
| | Installing a corrupted APK | `ok` | — |
| | Uninstalling the app via App Drawer | `ok` | — |
| | Uninstalling the app via System Settings | `ok` | — |
| **Connection** | Check the app work in Airplane mode | `ok` | — |
| **Interruptions** | Check the app works correctly after switching to another app | `ok` | — |
| | Check app behavior after locking/unlocking the screen | `ok` | — |
| | Incoming phone call while using the app | `ok` | — |
| **User interface** | Button "Добавить задачу" is displayed and enabled | `ok` | — |
| | The hint "Для редактирования задачи выполните долгое нажатие на ней." is displayed on UI | `ok` | — |
| | The input field is displayed and enabled on UI | `ok` | — |
| | UI layout responsiveness on small screen width (320 dp) in Portrait mode | `failed` | MOB-29 |
| | UI layout and task list visibility on small screen width (320 dp) in Landscape mode | `failed` | MOB-30 |
| | UI layout responsiveness in Portrait mode | `ok` | — |
| | UI layout responsiveness in Landscape mode | `ok` | — |
| **Launch and work** | First launch | `ok` | — |
| | Input text in the input field using Cyrillic characters | `ok` | — |
| | Input text in the input field using any characters except Cyrillic | `ok` | — |
| | Attempting to add an empty task / spaces only | `failed` | MOB-15 |
| | Edit the task using Cyrillic characters | `ok` | — |
| | Edit the task using non-Cyrillic characters | `failed` | MOB-17 |
| | Edit the task with empty field | `ok` | — |
| | Delete task | `ok` | — |
| | Display of the on-screen keyboard upon tapping the input field | `ok` | — |
| | Dismissing the keyboard (tapping outside / back gesture) | `ok` | — |
| | Input 24 - 25 characters in the input field using Cyrillic characters | `ok` | — |
| | Input 26 characters in the input field using Cyrillic characters | `ok` | — |
| | Edit the task using 26 Cyrillic characters | `failed` | MOB-24 |
| | Edit the task using 24-25 Cyrillic characters | `ok` | — |
| | Add tasks up to the maximum limit of 10 tasks | `ok` | — |
| | Add 11 tasks | `ok` | — |
