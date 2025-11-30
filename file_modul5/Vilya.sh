#!/bin/bash

echo "nameserver 192.229.1.203" > /etc/resolv.conf

apt-get update
apt-get install isc-dhcp-server -y

cat > /etc/default/isc-dhcp-server << 'EOF'
INTERFACESv4="eth0"
EOF

cat > /etc/dhcp/dhcpd.conf << 'EOF'
default-lease-time 600;
max-lease-time 7200;
authoritative;

subnet 192.229.0.0 netmask 255.255.255.0 {
    option routers 192.229.0.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.0.255;
    option domain-name-servers 192.229.1.203;
    range 192.229.0.2 192.229.0.254;
}

subnet 192.229.1.0 netmask 255.255.255.128 {
    option routers 192.229.1.1;
    option subnet-mask 255.255.255.128;
    option broadcast-address 192.229.1.127;
    option domain-name-servers 192.229.1.203;
    range 192.229.1.2 192.229.1.126;
}

subnet 192.229.1.128 netmask 255.255.255.192 {
    option routers 192.229.1.129;
    option subnet-mask 255.255.255.192;
    option broadcast-address 192.229.1.191;
    option domain-name-servers 192.229.1.203;
    range 192.229.1.130 192.229.1.190;
}

subnet 192.229.1.192 netmask 255.255.255.248 {
    option routers 192.229.1.193;
    option subnet-mask 255.255.255.248;
    option broadcast-address 192.229.1.199;
    option domain-name-servers 192.229.1.203;
    range 192.229.1.194 192.229.1.198;
}

subnet 192.229.1.200 netmask 255.255.255.248 {
}
EOF

service isc-dhcp-server restart
