#!/bin/bash

echo "nameserver 192.229.1.203" > /etc/resolv.conf

iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to-source 192.168.122.10
