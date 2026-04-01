#!/bin/bash

# 1. Создаем "конфиг" файл
echo "server_address: localhost" > config.yaml
echo "port: 8080" >> config.yaml
echo "status: debug" >> config.yaml

echo "--- ФАЙЛ ДО ЗАМЕНЫ ---"
cat config.yaml

# 2. Магия SED: меняем localhost на реальный адрес
# s - значит substitute (заменить), /что/на что/
sed -i 's/localhost/://production-server.com' config.yaml

# 3. Еще одна замена: меняем режим с debug на active
sed -i 's/debug/active/' config.yaml

echo -e "\n--- ФАЙЛ ПОСЛЕ ЗАМЕНЫ ---"
cat config.yaml

echo -e "\n--- ИТОГО: ---"
grep "server_address" config.yaml
