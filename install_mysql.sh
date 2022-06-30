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
alter user 'root'@'locahost' identified by 'password';
# if not accord to policy, set the complex password;
 show variables like 'validate_password%';
 set global validate_password.policy=low;

# show the users
mysql -u root -p -e "select user, host from mysql.user;"

# login in 
mysql -u username -p -h host.address

# install problem 
yum install -y libio

# mysqld.service: Main process exited, code=exited, status=1/FAILURE'i

sudo cat /var/log/mysqld.log
#solution one
change the config.file
sudo vim /etc/my.cnf

#solution two
sudo rm -rf /var/lib/mysql
restart 
