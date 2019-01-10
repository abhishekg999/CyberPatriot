#!/bin/bash

#CYBERPATRIOT SCRIPT
#ABHISHEK GOVINDARASU - MOREAU CATHOLIC

###############################################

#check if root
if ["$EUID" -ne 0]
	then echo "not SUDO"
	exit
fi



#disable guest
echo "" >> sample.txt
echo "allow-guest=false" >> sample.txt

ufw enable
sysctl -n net.ipv4.tcp_cookies

echo "" >> /etc/sysctl.conf
echo "net.ipv4.tcp_syncookies = 1" >> /etc/sysctl.conf

echo 0 >> /proc/sys/net/ipv4/ip_forward
echo "nospoof on" >> /etc/host.conf



