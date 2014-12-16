#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.

echo 'Running extra provisioning'

#Clear contents of xdebug.ini
sudo sh -c '> /etc/php5/mods-available/xdebug.ini'

#Add remote xdebug config
echo 'zend_extension=xdebug.so' | sudo tee -a /etc/php5/mods-available/xdebug.ini >/dev/null
echo 'xdebug.remote_enable = on' | sudo tee -a /etc/php5/mods-available/xdebug.ini >/dev/null
echo 'xdebug.remote_connect_back = on' | sudo tee -a /etc/php5/mods-available/xdebug.ini >/dev/null
echo 'xdebug.idekey = "vagrant"' | sudo tee -a /etc/php5/mods-available/xdebug.ini >/dev/null

sudo service php5-fpm restart

echo 'Done extra provisioning'