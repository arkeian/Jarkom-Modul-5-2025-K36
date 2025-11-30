#!/bin/bash

echo "nameserver 192.168.122.1" > /etc/resolv.conf

apt-get update
apt-get install bind9 -y
ln -s /etc/init.d/named /etc/init.d/bind9

cat > /etc/bind/named.conf.local <<'EOF'
zone "K36.com" {
        type master;
        file "/etc/bind/ns1/K36.com";
};
EOF

mkdir -p /etc/bind/ns1
chown bind:bind /etc/bind/ns1

cat > /etc/bind/ns1/K36.com <<'EOF'
$TTL    604800          ; Waktu cache default (detik)
@       IN      SOA     ns1.K36.com. root.K36.com. (
                        2025100401 ; Serial (format YYYYMMDDXX)
                        604800     ; Refresh (1 minggu)
                        86400      ; Retry (1 hari)
                        2419200    ; Expire (4 minggu)
                        604800 )   ; Negative Cache TTL
;

@       IN      NS      ns1.K36.com.

ns1         IN      A       192.229.1.203  ; IP Narya
@           IN      A       192.229.1.203  ; IP Narya
vilya       IN      A       192.229.1.202
ironhills   IN      A       192.229.1.222
palantir    IN      A       192.229.1.238

www         IN      A       192.229.1.222
www         IN      A       192.229.1.238
EOF

cat > /etc/bind/named.conf.options <<'EOF'
options {
    directory "/var/cache/bind";

    forwarders {
        192.168.122.1;
    };

    dnssec-validation no;
    listen-on-v6 { any; };
    allow-query { any; };
    auth-nxdomain no;
};
EOF

cat >> /etc/bind/named.conf.local <<'EOF'

zone "1.229.192.in-addr.arpa" {
        type master;
        file "/etc/bind/ns1/1.229.192.in-addr.arpa";
};
EOF

cat > /etc/bind/ns1/1.229.192.in-addr.arpa <<'EOF'
$TTL    604800          ; Waktu cache default (detik)
@       IN      SOA     ns1.K36.com. root.K36.com. (
                        2025100401 ; Serial (format YYYYMMDDXX)
                        604800     ; Refresh (1 minggu)
                        86400      ; Retry (1 hari)
                        2419200    ; Expire (4 minggu)
                        604800 )   ; Negative Cache TTL
;

@       IN      NS      ns1.K36.com.

203     IN      PTR     ns1.K36.com.
202     IN      PTR     vilya.K36.com.
222     IN      PTR     ironhills.K36.com.
238     IN      PTR     palantir.K36.com.
EOF

service bind9 restart

