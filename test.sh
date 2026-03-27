#!/bin/bash

# Создаем переменную с названием папки
FOLDER_NAME="my_app"

echo "Проверяем наличие папки $FOLDER_NAME..."

# Проверка: если папка НЕ существует (-d - это directory, ! - это "не")
if [ ! -d "$FOLDER_NAME" ]; then
  echo "Папка не найдена. Создаю..."
  mkdir "$FOLDER_NAME"
  echo "Папка успешно создана."
else
  echo "Папка уже существует, ничего делать не нужно."
fi

# Запишем лог в эту папку
echo "Лог записан в $(date)" > "$FOLDER_NAME/install.log"
ls -R "$FOLDER_NAME"
