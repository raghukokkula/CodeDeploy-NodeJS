#!/bin/bash

# This script is executed before copying the source

yum -y update

curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
yum -y install nodejs

npm install -g pm2
pm2 update

export app_root=/usr/cddeploy
if [ -d "$app_root" ];then
    rm -rf /usr/cddeploy
    mkdir -p /usr/cddeploy
else
    mkdir -p /usr/cddeploy
fi

