#!/bin/bash

# Создаем файл
echo "server_address: localhost" > config.yaml
echo "status: debug" >> config.yaml

echo "--- ДО ЗАМЕНЫ ---"
cat config.yaml

# 1. Меняем адрес (используем запятые вместо слэшей, так надежнее с адресами)
sed -i 's,localhost,production-server.com,' config.yaml

# 2. Меняем статус
sed -i 's/debug/active/' config.yaml

echo -e "\n--- ПОСЛЕ ЗАМЕНЫ ---"
cat config.yaml
