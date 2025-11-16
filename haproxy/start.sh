#!/bin/bash
set -e

mkdir -p /run/haproxy

haproxy -db -f /etc/haproxy/haproxy.cfg &

exec /usr/local/bin/consul-template \
    -consul-addr=consul:8500 \
    -template "/etc/haproxy/haproxy.ctmpl:/etc/haproxy/haproxy.cfg:./etc/haproxy/reload.sh" \
    -wait 10s:60s \
    -log-level=info