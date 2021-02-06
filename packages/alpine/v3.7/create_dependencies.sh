#!/usr/bin/env bash

# Remove all links
./remove_dependencies.sh

# Re-create all links
ln -sf -t . ../common/composer
ln -sf -t . ../common/enchant
ln -sf -t . ../common/libxlsxwriter
ln -sf -t . ../common/phpunit7
ln -sf -t . ../common/phpunit8
ln -sf -t . ../common/phpunit9

# Re-create php7.1 links
ln -sf -t . ../common/php7.1
ln -sf -t . ../common/php7.1-apcu
ln -sf -t . ../common/php7.1-ast
ln -sf -t . ../common/php7.1-composer
ln -sf -t . ../common/php7.1-ds
ln -sf -t . ../common/php7.1-igbinary
ln -sf -t . ../common/php7.1-imagick
ln -sf -t . ../common/php7.1-memcached
ln -sf -t . ../common/php7.1-meminfo
ln -sf -t . ../common/php7.1-mongodb
ln -sf -t . ../common/php7.1-pdo_sqlsrv
ln -sf -t . ../common/php7.1-phpunit
ln -sf -t . ../common/php7.1-redis
ln -sf -t . ../common/php7.1-sodium
ln -sf -t . ../common/php7.1-smbclient
ln -sf -t . ../common/php7.1-sqlsrv
ln -sf -t . ../common/php7.1-uuid
ln -sf -t . ../common/php7.1-xdebug
ln -sf -t . ../common/php7.1-xlswriter
ln -sf -t . ../common/php7.1-yaml

# Re-create php7.2 links
ln -sf -t . ../common/php7.2
ln -sf -t . ../common/php7.2-apcu
ln -sf -t . ../common/php7.2-ast
ln -sf -t . ../common/php7.2-composer
ln -sf -t . ../common/php7.2-ds
ln -sf -t . ../common/php7.2-igbinary
ln -sf -t . ../common/php7.2-imagick
ln -sf -t . ../common/php7.2-mcrypt
ln -sf -t . ../common/php7.2-memcached
ln -sf -t . ../common/php7.2-meminfo
ln -sf -t . ../common/php7.2-mongodb
ln -sf -t . ../common/php7.2-pdo_sqlsrv
ln -sf -t . ../common/php7.2-phpunit
ln -sf -t . ../common/php7.2-redis
ln -sf -t . ../common/php7.2-smbclient
ln -sf -t . ../common/php7.2-sqlsrv
ln -sf -t . ../common/php7.2-uuid
ln -sf -t . ../common/php7.2-xdebug
ln -sf -t . ../common/php7.2-xlswriter
ln -sf -t . ../common/php7.2-yaml

# Re-create php7.3 links
ln -sf -t . ../common/php7.3
ln -sf -t . ../common/php7.3-apcu
ln -sf -t . ../common/php7.3-ast
ln -sf -t . ../common/php7.3-composer
ln -sf -t . ../common/php7.3-ds
ln -sf -t . ../common/php7.3-igbinary
ln -sf -t . ../common/php7.3-imagick
ln -sf -t . ../common/php7.3-mcrypt
ln -sf -t . ../common/php7.3-memcached
ln -sf -t . ../common/php7.3-meminfo
ln -sf -t . ../common/php7.3-mongodb
ln -sf -t . ../common/php7.3-pdo_sqlsrv
ln -sf -t . ../common/php7.3-phpunit
ln -sf -t . ../common/php7.3-redis
ln -sf -t . ../common/php7.3-smbclient
ln -sf -t . ../common/php7.3-sqlsrv
ln -sf -t . ../common/php7.3-uuid
ln -sf -t . ../common/php7.3-xdebug
ln -sf -t . ../common/php7.3-xlswriter
ln -sf -t . ../common/php7.3-yaml
