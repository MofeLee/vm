#!/bin/sh

sudo whoami

# replace sources.list
sudo cat > /etc/apt/sources.list<<- EOM
deb http://cn.archive.ubuntu.com/ubuntu/ xenial main restricted universe multiverse
deb http://cn.archive.ubuntu.com/ubuntu/ xenial-security main restricted universe multiverse
deb http://cn.archive.ubuntu.com/ubuntu/ xenial-updates main restricted universe multiverse
deb http://cn.archive.ubuntu.com/ubuntu/ xenial-backports main restricted universe multiverse

deb http://cn.archive.ubuntu.com/ubuntu/ xenial-proposed main restricted universe multiverse

deb-src http://cn.archive.ubuntu.com/ubuntu/ xenial main restricted universe multiverse
deb-src http://cn.archive.ubuntu.com/ubuntu/ xenial-security main restricted universe multiverse
deb-src http://cn.archive.ubuntu.com/ubuntu/ xenial-updates main restricted universe multiverse
deb-src http://cn.archive.ubuntu.com/ubuntu/ xenial-backports main restricted universe multiverse
deb-src http://cn.archive.ubuntu.com/ubuntu/ xenial-proposed main restricted universe multiverse

deb http://archive.canonical.com/ubuntu/ xenial partner
deb http://extras.ubuntu.com/ubuntu/ xenial main
EOM

# install varnish
sudo apt update
sudo apt-get install apt-transport-https

curl https://repo.varnish-cache.org/GPG-key.txt | sudo apt-key add -
echo "deb https://repo.varnish-cache.org/debian/ jessie varnish-4.1" \
  | sudo tee -a /etc/apt/sources.list.d/varnish-cache.list
sudo apt-get update
sudo apt-get install varnish -y
varnishd -V

# setting varnish
sudo sed -i 's/\.host = "127.0.0.1"/\.host = "www.varnish-cache.org"/' /etc/varnish/default.vcl
sudo sed -i 's/\.port = "8080"/\.port = "80"/' /etc/varnish/default.vcl
sudo systemctl start varnish
sudo systemctl status varnish
sudo netstat -nlpt
