#!/bin/sh

set -ex

apt-get install -y dnsmasq avahi-daemon # networking

cat <<EOF
interface=br0
dhcp-range=192.168.56.150,192.168.56.200,1h
EOF >> /etc/dnsmasq.conf

# Honestly not sure what that dnsmasq bit above does. I should look into it!
apt-get install -y bridge-utils
brctl addbr xenbr0
brctl addif xenbr0 eth1
