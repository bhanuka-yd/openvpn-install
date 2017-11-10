#!/bin/bash
# Fixing the Ip Tables Problem (the prev script does not add MASQUARADE, so adding it now)
# please run this with root privileges
# change the IP address accoring to your OPENVPN network

iptables -t nat -F
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o eth0 -j MASQUERADE

