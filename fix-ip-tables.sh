#!/bin/bash
# Fixing the Ip Tables Problem (the prev script does not add MASQUARADE, so adding it now)
# please run this with root privileges
# change the IP address accoring to your OPENVPN network


#iptables -A INPUT -i eth0 -p tcp --dport 22 -j ACCEPT
#iptables -A INPUT -i eth0 -p udp --dport 1194 -j ACCEPT
#iptables -A INPUT -i eth0 -j DROP

iptables -t nat -F
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o eth0 -j MASQUERADE

#echo 'iptables -A INPUT -i eth0 -p tcp --dport 22 -j ACCEPT' >> /etc/rc.local
#echo 'iptables -A INPUT -i eth0 -p udp --dport 1194 -j ACCEPT' >> /etc/rc.local
#echo 'iptables -A INPUT -i eth0 -j DROP' >> /etc/rc.local

echo 'iptables -t nat -F' >> /etc/rc.local
echo 'iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o eth0 -j MASQUERADE' >> /etc/rc.local

