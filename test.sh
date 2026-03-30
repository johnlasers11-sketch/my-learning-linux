#!/bin/bash

# 1. Создаем имитацию большого лог-файла
echo "2023-10-01 10:00:01 INFO: System started" > app.log
echo "2023-10-01 10:05:23 WARNING: High memory usage" >> app.log
echo "2023-10-01 10:10:45 ERROR: Connection lost to Database" >> app.log
echo "2023-10-01 10:15:12 INFO: Retrying..." >> app.log
echo "2023-10-01 10:20:00 ERROR: Authentication failed" >> app.log

echo "--- ВЕСЬ ФАЙЛ (для справки) ---"
cat app.log

echo -e "\n--- ШАГ 1: Ищем только ошибки (ERROR) ---"
grep "ERROR" app.log

echo -e "\n--- ШАГ 2: Считаем, сколько раз была ошибка ---"
grep -c "ERROR" app.log

echo -e "\n--- ШАГ 3: Ищем всё, КРОМЕ информационных сообщений (INFO) ---"
grep -v "INFO" app.log
