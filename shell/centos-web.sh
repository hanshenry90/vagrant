#!bin/bash

# Install Apache server
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
# Stop apache server for configuration
service httpd stop

# Install PHP
yum install -y php php-cli php-common php-devel php-mysql

# Delete directory html and create symbolic link for custom html
rm -rf /var/www/html
ln -s /vagrant /var/www/html
# Start Apache server
service httpd start

# Download starter html content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/hanshenry90/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/hanshenry90/vagrant/master/files/info.php

# Restart Apache server
sevice httpd restart
