#!/bin/bash
for i in {1..20}
do
  echo "Запрос #$i"
  curl -k --no-keepalive https://localhost:2828/api/v1/vehicles;
  sleep 1
done
