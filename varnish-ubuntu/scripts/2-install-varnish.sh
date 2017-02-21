#!/bin/sh

echo '====>>>> install varnish'

sudo apt update
sudo apt-get install varnish -y
varnishd -V
