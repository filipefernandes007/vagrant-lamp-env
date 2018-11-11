#!/usr/bin/env bash

# Use single quotes instead of double quotes to make it work with special-character passwords


# install PPA 'ondrej/php'. The PPA is well known, and is relatively safe to use.
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:ondrej/php

# update / upgrade
sudo apt -y update
sudo apt -y upgrade

# install apache
#  sudo apt install -y apache2

# removing all old php dependencies (not needed on fresh setup).
#sudo apt-get remove -y php*

# installing php7.1 and php modules
# sudo apt-get install -y php7.1 php7.1-cli php7.1-common libapache2-mod-php7.1 php7.1-fpm php7.1-curl php7.1-gd php7.1-bz2 php7.1-mcrypt php7.1-json php7.1-tidy php7.1-mbstring php-redis php-memcached
# sudo apt install -y php7.1-mysql

# install mysql and give password to installer
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password $PASSWORD"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $PASSWORD"
sudo apt install -y mysql-server
# sudo apt install -y php7.1-mysql



