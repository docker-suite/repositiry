#!/usr/bin/env bash

# Remove all links
./remove_dependencies.sh

# Re-create php7.1 links
ln -sf -t ./php7.1              ../enchant
ln -sf -t ./php7.1-apcu         ../php7.1
ln -sf -t ./php7.1-ast          ../php7.1
ln -sf -t ./php7.1-composer     ../php7.1
ln -sf -t ./php7.1-composer     ../composer
ln -sf -t ./php7.1-ds           ../php7.1
ln -sf -t ./php7.1-igbinary     ../php7.1
ln -sf -t ./php7.1-igbinary     ../php7.1-apcu
ln -sf -t ./php7.1-imagick      ../php7.1
ln -sf -t ./php7.1-memcached    ../php7.1
ln -sf -t ./php7.1-meminfo      ../php7.1
ln -sf -t ./php7.1-mongodb      ../php7.1
ln -sf -t ./php7.1-pdo_sqlsrv   ../php7.1
ln -sf -t ./php7.1-pdo_sqlsrv   ../php7.1-sqlsrv
ln -sf -t ./php7.1-phpunit      ../php7.1
ln -sf -t ./php7.1-phpunit      ../phpunit7
ln -sf -t ./php7.1-redis        ../php7.1
ln -sf -t ./php7.1-redis        ../php7.1-igbinary
ln -sf -t ./php7.1-sodium       ../php7.1
ln -sf -t ./php7.1-smbclient    ../php7.1
ln -sf -t ./php7.1-sqlsrv       ../php7.1
ln -sf -t ./php7.1-uuid         ../php7.1
ln -sf -t ./php7.1-xdebug       ../php7.1
ln -sf -t ./php7.1-xlswriter    ../php7.1
ln -sf -t ./php7.1-xlswriter    ../libxlsxwriter
ln -sf -t ./php7.1-yaml         ../php7.1


# Re-create php7.2 links
ln -sf -t ./php7.2              ../enchant
ln -sf -t ./php7.2-apcu         ../php7.2
ln -sf -t ./php7.2-ast          ../php7.2
ln -sf -t ./php7.2-composer     ../php7.2
ln -sf -t ./php7.2-composer     ../composer
ln -sf -t ./php7.2-ds           ../php7.2
ln -sf -t ./php7.2-igbinary     ../php7.2
ln -sf -t ./php7.2-igbinary     ../php7.2-apcu
ln -sf -t ./php7.2-imagick      ../php7.2
ln -sf -t ./php7.2-mcrypt       ../php7.2
ln -sf -t ./php7.2-memcached    ../php7.2
ln -sf -t ./php7.2-meminfo      ../php7.2
ln -sf -t ./php7.2-mongodb      ../php7.2
ln -sf -t ./php7.2-pdo_sqlsrv   ../php7.2
ln -sf -t ./php7.2-pdo_sqlsrv   ../php7.2-sqlsrv
ln -sf -t ./php7.2-phpunit      ../php7.2
ln -sf -t ./php7.2-phpunit      ../phpunit8
ln -sf -t ./php7.2-redis        ../php7.2
ln -sf -t ./php7.2-redis        ../php7.2-igbinary
ln -sf -t ./php7.2-smbclient    ../php7.2
ln -sf -t ./php7.2-sqlsrv       ../php7.2
ln -sf -t ./php7.2-uuid         ../php7.2
ln -sf -t ./php7.2-xdebug       ../php7.2
ln -sf -t ./php7.2-xlswriter    ../php7.2
ln -sf -t ./php7.2-xlswriter    ../libxlsxwriter
ln -sf -t ./php7.2-yaml         ../php7.2


# Re-create php7.3 links
ln -sf -t ./php7.3              ../enchant
ln -sf -t ./php7.3-apcu         ../php7.3
ln -sf -t ./php7.3-ast          ../php7.3
ln -sf -t ./php7.3-composer     ../php7.3
ln -sf -t ./php7.3-composer     ../composer
ln -sf -t ./php7.3-ds           ../php7.3
ln -sf -t ./php7.3-igbinary     ../php7.3
ln -sf -t ./php7.3-igbinary     ../php7.3-apcu
ln -sf -t ./php7.3-imagick      ../php7.3
ln -sf -t ./php7.3-mcrypt       ../php7.3
ln -sf -t ./php7.3-memcached    ../php7.3
ln -sf -t ./php7.3-meminfo      ../php7.3
ln -sf -t ./php7.3-mongodb      ../php7.3
ln -sf -t ./php7.3-pdo_sqlsrv   ../php7.3
ln -sf -t ./php7.3-pdo_sqlsrv   ../php7.3-sqlsrv
ln -sf -t ./php7.3-phpunit      ../php7.3
ln -sf -t ./php7.3-phpunit      ../phpunit9
ln -sf -t ./php7.3-redis        ../php7.3
ln -sf -t ./php7.3-redis        ../php7.3-igbinary
ln -sf -t ./php7.3-smbclient    ../php7.3
ln -sf -t ./php7.3-sqlsrv       ../php7.3
ln -sf -t ./php7.3-uuid         ../php7.3
ln -sf -t ./php7.3-xdebug       ../php7.3
ln -sf -t ./php7.3-xlswriter    ../php7.3
ln -sf -t ./php7.3-xlswriter    ../libxlsxwriter
ln -sf -t ./php7.3-yaml         ../php7.3


# Re-create php7.4 links
ln -sf -t ./php7.4              ../enchant
ln -sf -t ./php7.4-apcu         ../php7.4
ln -sf -t ./php7.4-ast          ../php7.4
ln -sf -t ./php7.4-composer     ../php7.4
ln -sf -t ./php7.4-composer     ../composer
ln -sf -t ./php7.4-ds           ../php7.4
ln -sf -t ./php7.4-igbinary     ../php7.4
ln -sf -t ./php7.4-igbinary     ../php7.4-apcu
ln -sf -t ./php7.4-imagick      ../php7.4
ln -sf -t ./php7.4-mcrypt       ../php7.4
ln -sf -t ./php7.4-memcached    ../php7.4
ln -sf -t ./php7.4-meminfo      ../php7.4
ln -sf -t ./php7.4-mongodb      ../php7.4
ln -sf -t ./php7.4-pdo_sqlsrv   ../php7.4
ln -sf -t ./php7.4-pdo_sqlsrv   ../php7.4-sqlsrv
ln -sf -t ./php7.4-phpunit      ../php7.4
ln -sf -t ./php7.4-phpunit      ../phpunit9
ln -sf -t ./php7.4-recode       ../php7.4
ln -sf -t ./php7.4-redis        ../php7.4
ln -sf -t ./php7.4-redis        ../php7.4-igbinary
ln -sf -t ./php7.4-smbclient    ../php7.4
ln -sf -t ./php7.4-sqlsrv       ../php7.4
ln -sf -t ./php7.4-uuid         ../php7.4
ln -sf -t ./php7.4-wddx         ../php7.4
ln -sf -t ./php7.4-xdebug       ../php7.4
ln -sf -t ./php7.4-xlswriter    ../php7.4
ln -sf -t ./php7.4-xlswriter    ../libxlsxwriter
ln -sf -t ./php7.4-yaml         ../php7.4

