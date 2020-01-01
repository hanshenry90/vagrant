#!/bin/bash

# install MySql database service
yum install -y mysql mysql-server mysql-devel
# load mysql on system start up
chkconfig --add mysqld
chkconfig mysqld on
# start mysql server
service mysqld start

#create mysql database table
mysql -u root -e "SHOW DATABASES";
# mysql -u root -e "CREATE DATABASE IF NOT EXIST lamp_html_service_test"
