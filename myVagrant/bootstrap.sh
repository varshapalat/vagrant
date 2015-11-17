#!/usr/bin/env bash

echo Updating apt-get.......
apt-get update
echo Installing apache........
apt-get install -y apache2
echo Adding the symlink.........
if ! [ -L /var/www ]; then
   rm -rf /var/www
   ln -fs /vagrant /var/www
fi
