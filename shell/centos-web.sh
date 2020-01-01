#!/bin/bash
# update CentOS with any patches
yum update -y --exclude=kernel

# install nano git
yum install -y nano git unzip screen

# install Apache web service and start Apache server
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on 
# stop Apache server for further config
service httpd stop

# delete html and create symbolic link for my own html
rm -rf /var/www/html
ln -s /vagrant /var/www/html
# start Apache server
service httpd start

# install PHP
yum install -y php php-cli php-common php-devel php-mysql

# download starter html content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/hanshenry90/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/hanshenry90/vagrant/master/files/info.php

# restart Apache server for taking effect for changes
service httpd start








