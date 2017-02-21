#!/bin/sh

echo '====>>>> install varnish'

sudo apt update
sudo apt-get install apt-transport-https

curl https://repo.varnish-cache.org/GPG-key.txt | sudo apt-key add -
echo "deb https://repo.varnish-cache.org/debian/ jessie varnish-4.1" \
  | sudo tee -a /etc/apt/sources.list.d/varnish-cache.list
sudo apt-get update
sudo apt-get install varnish -y
varnishd -V
