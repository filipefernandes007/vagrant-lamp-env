#!/usr/bin/env bash


# installing php7.3 and php modules
sudo apt-get -y install software-properties-common

sudo add-apt-repository ppa:ondrej/php
sudo apt-get -y update
sudo apt-get -y install php7.3
sudo apt-get -y libapache2-mod-php7.3
sudo apt-get -y libaprutil1-dbd-sqlite3
sudo apt-get install -y php7.3-cli php7.3-common libapache2-mod-php7.3 php7.3-fpm php7.3-curl php7.3-gd php7.3-bz2 php7.3-json php7.3-tidy php7.3-mbstring php-redis php-memcached
sudo apt-get install -y php7.3-mysql
sudo apt-get install -y php7.3-intl
sudo apt-get install -y php7.3-sqlite3
sudo apt-get install -y php7.3-zip
sudo apt-get install -y php7.3-imagick
sudo apt-get install -y php-pear
sudo apt-get install -y php7.3-dev
sudo apt-get install -y php-xdebug

sudo cp /var/www/html/config/php-xdebug-73.ini /etc/php/7.3/mods-available/xdebug.ini

echo "Change PHP version to 7.3..."
sudo apt-get install -y update-alternatives
sudo /usr/sbin/update-alternatives --set php /usr/bin/php7.3
sudo a2dismod php7.2
sudo a2enmod php7.3

echo "Restart Apache"
sudo sudo systemctl restart apache2