#!/bin/bash

echo -e "\n\nUpdating Apt Packages and upgrading latest patches\n"
sudo apt-get update -y && sudo apt-get upgrade -y

echo -e "\n\nInstalling Apache2 Web server\n"
sudo apt-get install apache2 apache2-doc apache2-utils libexpat1 ssl-cert -y

echo -e "\n\nInstalling PHP & Requirements\n"
sudo apt-get install libapache2-mod-php php php-common php-curl php-dev php-gd php-pear php-mysql php-db -y

echo -e "\n\nInstalling MySQL\n"
sudo apt-get install mysql-server mysql-client -y

echo -e "\n\nPermissions for /var/www\n"
sudo chown -R www-data:www-data /var/www
echo -e "\n\n Permissions have been set\n"

echo -e "\n\nEnabling Modules\n"
sudo a2enmod rewrite
sudo phpenmod mcrypt

echo -e "\n\nRestarting Apache\n"
sudo service apache2 restart

echo -e "\n\nLAMP Installation Completed"

exit 0
