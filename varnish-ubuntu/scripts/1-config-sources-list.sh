#!/bin/sh
echo '====>>>> replcae sources.list'

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
EOM
