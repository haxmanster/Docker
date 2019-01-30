#!bin/bash

wget https://nodejs.org/dist/v4.0.0/node-v4.0.0-linux-armv7l.tar.gz 
tar -xvf node-v4.0.0-linux-armv7l.tar.gz 
cd node-v4.0.0-linux-armv7l
sudo cp -R * /usr/local/

cd /var/www/html

npm install -g bower

bower install --allow-root


