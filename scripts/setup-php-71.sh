#!/usr/bin/env bash

# installing php7.1 and php modules
sudo apt-get install -y php7.1 php7.1-cli php7.1-common libapache2-mod-php7.1 php7.1-fpm php7.1-curl php7.1-gd php7.1-bz2 php7.1-mcrypt php7.1-json php7.1-tidy php7.1-mbstring php-redis php-memcached
sudo apt install -y php7.1-mysql

sudo service apache2 restart
