#!/bin/bash

#install nano git
yum install -y nano git unzip screen

#install Apache web service and start Apache server
yum install -y httpd httpd-devel httpd-tools
chkconfig  --add httpd
chkconfig httpd start

#delete html and create symbolic link for my own html
cd /var/www/html
sudo rm -rf html
sudo ln -s /vagrant /var/www/html

#install PHP
yum install -y php php-cli php-common php-devel php-mysql

#install MySql database service
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld
chkconfig mysqld start

#create mysql database table
mysql -u root -e "CREATE DATABASE IF NOT EXIST lamp_html_service_test"







