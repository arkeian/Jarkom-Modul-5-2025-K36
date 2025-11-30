#!/bin/bash

curl http://ironhills.K36.com/
curl http://palantir.K36.com/

ping 192.229.1.194 -c 3
ping 192.229.1.130 -c 3

apt-get update
apt-get install ncat -y

nc -v 192.229.1.194 80