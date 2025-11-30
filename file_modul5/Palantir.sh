#!/bin/bash

echo "nameserver 192.229.1.203" > /etc/resolv.conf

apt-get update
apt-get install nginx -y

mkdir -p /var/www/html/

HOSTNAME=$(hostname)

cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html>
    <body>
        <h1>Welcome to $HOSTNAME</h1>
    </body>
</html>
EOF

cat > /etc/nginx/sites-available/palantir <<'EOF'
server {
    listen 80;
    server_name palantir.K36.com;

    root /var/www/html;
    index index.html;
}
EOF

ln -s /etc/nginx/sites-available/palantir /etc/nginx/sites-enabled/
rm /etc/nginx/sites-enabled/default
service nginx restart