#!/bin/bash

echo "--- Инициализация системы ---"
REPORT="daily_report.txt"

# 1. Собираем данные (записываем в файл)
echo "Дата проверки: $(date)" > $REPORT
echo "Версия ядра: $(uname -r)" >> $REPORT
echo "Свободно памяти: $(free -m | awk '/Mem:/ {print $4 " MB"}')" >> $REPORT

# 2. Имитируем лог ошибок
echo "ERROR: Database connection timeout" >> $REPORT
echo "INFO: System backup completed" >> $REPORT

# 3. Фильтруем только важное для отчета
echo "=== ИТОГОВЫЙ ОТЧЕТ ДЛЯ НАЧАЛЬСТВА ==="
grep "Дата" $REPORT
grep "Свободно" $REPORT

# 4. Проверяем, есть ли критические ошибки
if grep -q "ERROR" $REPORT; then
  echo "СТАТУС: Обнаружены ошибки! Нужно проверить логи."
else
  echo "СТАТУС: Всё работает стабильно."
fi
