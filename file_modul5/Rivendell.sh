#!/bin/bash

echo "nameserver 192.229.1.203" > /etc/resolv.conf

apt-get update
apt-get install isc-dhcp-relay -y

cat > /etc/default/isc-dhcp-relay << 'EOF'
SERVERS="192.229.1.202"
INTERFACES="eth0 eth1"
OPTIONS=""
EOF

cat > /etc/sysctl.conf << 'EOF'
net.ipv4.ip_forward=1
EOF

sysctl -p
service isc-dhcp-relay restart