#!/usr/bin/env bash


sudo rm "/usr/lib/apache2/modules/libphp5.so" -f
sudo rm "/etc/apache2/mods-available/php5.load" -f
sudo rm "/opt/php-5.4.45" -rf

#sudo rm "/var/www/html/info.php"
