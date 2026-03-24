# Скрипт для быстрого сбора логов после воспроизведения бага
adb logcat -c
echo "Воспроизведите баг и нажмите Enter..."
read
adb logcat -v time -d > stutter_issue_log.txt
echo "Лог сохранен в stutter_issue_log.txt"
