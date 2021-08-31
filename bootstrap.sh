#!/bin/bash
yum -y install epel-release
yum -y update
yum -y install nginx
mv /tmp/index.html /usr/share/nginx/html/index.html