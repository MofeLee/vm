#!/bin/sh
echo 'url: http://localhost:6081'
open 'http://localhost:6081'
ssh -o StrictHostKeyChecking=no -N -T -L 6081:localhost:6081 vagrant@127.0.0.1 -p 2222 -i ./.vagrant/machines/default/virtualbox/private_key
