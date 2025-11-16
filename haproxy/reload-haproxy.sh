#!/bin/bash
echo "======== New haproxy.cfg ========"
cat /etc/haproxy/haproxy.cfg
echo "======== End haproxy.cfg ========"
haproxy -f /etc/haproxy/haproxy.cfg -sf $(pidof haproxy)