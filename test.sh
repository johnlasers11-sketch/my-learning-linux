#!/bin/bash

# Создаем наш лог снова (сделаем его чуть сложнее)
echo "2023-10-01 10:00:01 INFO: System_started" > app.log
echo "2023-10-01 10:05:23 WARNING: High_memory" >> app.log
echo "2023-10-01 10:10:45 ERROR: Database_fail" >> app.log

echo "--- ВЕСЬ ЛОГ ---"
cat app.log

echo -e "\n--- ШАГ 1: Берем только ВРЕМЯ (2-я колонка) ---"
awk '{print $2}' app.log

echo -e "\n--- ШАГ 2: Берем ТИП события (3-я колонка) ---"
awk '{print $3}' app.log

echo -e "\n--- ШАГ 3: Комбинируем (Время и Тип) ---"
awk '{print "Событие [" $3 "] произошло в " $2}' app.log
