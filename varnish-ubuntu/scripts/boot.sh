#!/bin/sh

sudo whoami

cd $(dirname $0) && pwd

sh ./1-config-sources-list.sh
sh ./2-install-varnish.sh
sh ./3-setting-up-varnish.sh
