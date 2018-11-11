#!/usr/bin/env bash

sudo apt-get update -q -y
apt-get install -q -y vim curl
apt-get install -q -y git

echo "Home dir folder: ${HOMEDIRFOLDER}"

# create project folder
if [ -d "/var/www/html/${HOMEDIRFOLDER}" ];
then
	echo "/var/www/html/${HOMEDIRFOLDER} exists."
else
	sudo mkdir "/var/www/html/${HOMEDIRFOLDER}"
fi

echo "<?php phpinfo(); ?>" > /var/www/html/${HOMEDIRFOLDER}/index.php

sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:ondrej/php

# update / upgrade
sudo apt-get -y update
sudo apt-get -y upgrade