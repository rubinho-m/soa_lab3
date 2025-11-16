#!/bin/bash

for i in {1..50}
do
  echo "Запрос #$i"
  curl -k https://localhost:2929/api/v1/shop/search/by-number-of-wheels/1/4 > /dev/null 2>&1 &
  sleep 1
done
