# install process
tar -zxvf mysql-8.0.28.tar.gz
cd mysql-8.0.28
sudo rpm -ivh mysql-community-common-8.0.28-1.el8.x86_64.rpm --nodeps --force
sudo rpm -ivh mysql-community-libs-8.0.28-1.el8.x86_64.rpm --nodeps --force
sudo rpm -ivh mysql-community-client-8.0.28-1.el8.x86_64.rpm --nodeps --force
sudo rpm -ivh mysql-community-server-8.0.28-1.el8.x86_64.rpm --nodeps --force
rpm -qa | grep mysql
sudo mysqld --initialize
sudo chown mysql:mysql /var/lib/mysql -R
sudo systemctl start mysqld
ps -ef | grep mysqld
sudo netstat -utlpn | grep mysql

# get the initial password and get into it
sudo cat /var/log/mysqld.log | grep password
mysql -u root -p

# set new password in mysql


# show the users
mysql -u root -p -e "select user, host from mysql.user;"

