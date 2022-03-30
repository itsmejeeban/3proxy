#!/bin/bash

echo "-----------------------------------------------"
echo " Welcome to 3Proxy Quick Installer"
echo "-----------------------------------------------"
echo " "

#Depending Install
yum -y install gcc make

#Download 3Proxy
cd /
cd root
mkdir /tmp/proxy
cd /tmp/proxy
wget http://3proxy.ru/0.7.1.2/3proxy-0.7.1.2.tgz
tar -xvzf 3proxy-0.7.1.2.tgz

#Compile 3Proxy
cd 3proxy/
make -f Makefile.Linux
cd src/
mkdir /root/3proxy
mv 3proxy /root/3proxy/

##Configurate 3Proxy
cd /root/3proxy/
wget https://raw.githubusercontent.com/itsmejeeban/3proxy/main/3proxy.cfg
chmod 777 3proxy.cfg

chmod +x 3proxy
mkdir /var/log/3proxy
./3proxy 3proxy.cfg

echo "-----------------------------------------------"
echo " 3Proxy Installed."
echo "-----------------------------------------------"
echo "Default Port:"
echo "1080"
echo "Default IP:"
hostname -i



