#!/bin/sh

echo '====>>> setting up varnish'

sudo sed -i 's/\.host = "127.0.0.1"/\.host = "www.varnish-cache.org"/' /etc/varnish/default.vcl
sudo sed -i 's/\.port = "8080"/\.port = "80"/' /etc/varnish/default.vcl
sudo systemctl start varnish
sudo systemctl status varnish
sudo netstat -nlpt
