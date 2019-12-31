#!bin/bash

# Install MySQL
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld 
chkconfig mysqld on
# Start MySQL server
service mysqld start

# Show mysql database
mysql -u root -e "SHOW DATABASES";