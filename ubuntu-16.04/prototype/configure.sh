#!/usr/bin/env bash


cd php-5.4.45

# http://php.net/manual/en/install.unix.apache2.php
# ./configure --help
#./configure --with-apxs2=/usr/bin/apxs2 --with-mysql
./configure --with-apxs2=/usr/bin/apxs2 --prefix=/opt/php-5.4.45
#./configure --with-apxs2=/usr/bin/apxs2 --prefix=/opt/php-5.4.45 --with-config-file-path=/opt/php-5.4.45/conf
