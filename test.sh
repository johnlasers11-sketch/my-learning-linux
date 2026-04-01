#!/bin/bash

echo "server_address: localhost" > config.yaml
echo "port: 8080" >> config.yaml
echo "status: debug" >> config.yaml

echo "--- ФАЙЛ ДО ЗАМЕНЫ ---"
cat config.yaml

sed -i 's/localhost/://production-server.com' config.yaml

sed -i 's/debug/active/' config.yaml

echo -e "\n--- ФАЙЛ ПОСЛЕ ЗАМЕНЫ ---"
cat config.yaml

echo -e "\n--- ИТОГО: ---"
grep "server_address" config.yaml
