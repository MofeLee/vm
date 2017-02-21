#!/bin/sh
ssh -o StrictHostKeyChecking=no -N -T -L 6082:localhost:6082 vagrant@127.0.0.1 -p 2222 -i ./.vagrant/machines/default/virtualbox/private_key
