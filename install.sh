yum -y install gcc make
cd /
cd root
mkdir /tmp/proxy
cd /tmp/proxy
wget http://3proxy.ru/0.7.1.2/3proxy-0.7.1.2.tgz
tar -xvzf 3proxy-0.7.1.2.tgz
cd 3proxy/
make -f Makefile.Linux
cd src/
mkdir /root/3proxy
mv 3proxy /root/3proxy/
cd /root/3proxy/
wget https://raw.githubusercontent.com/itsmejeeban/3proxy/main/3proxy.cfg
chmod 777 3proxy.cfg
chmod +x 3proxy
mkdir /var/log/3proxy
./3proxy 3proxy.cfg



