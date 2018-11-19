#!/usr/bin/env bash


# installing php7.2 and php modules
sudo apt-get install -y php7.2-cli php7.2-common libapache2-mod-php7.2 php7.2-fpm php7.2-curl php7.2-gd php7.2-bz2 php7.2-json php7.2-tidy php7.2-mbstring php-redis php-memcached
sudo apt-get install -y php7.2-mysql
sudo apt-get install -y php7.2-intl
sudo apt-get install -y php7.2-sqlite3
sudo apt-get install -y php7.2-zip
sudo apt-get install -y php7.2-imagick
sudo apt-get install -y php-pear
sudo apt-get install -y php7.2-dev
sudo apt-get install -y php-xdebug

sudo cp /var/www/html/config/php-xdebug.ini /etc/php/7.2/mods-available/xdebug.ini

sudo service apache2 restart