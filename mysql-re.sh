create user 'backup1'@'192.168.1.103' identified by '123456';
grant all privileges on *.* to 'backup1'@'192.168.1.103';
flush privileges;

# config related
[mysqld]

pid-file        = /var/run/mysqld/mysqld.pid
socket          = /var/run/mysqld/mysqld.sock
datadir         = /var/lib/mysql
secure-file-priv= NULL

# 主从复制-主机配置
# 主服务器唯一ID
server-id=1

# 启用二进制日志
log-bin=mysql-bin

# relay-log
relay-log=relay-bin
relay-log-index=relay-bin-index

# 设置不要复制的数据库(可设置多个)
binlog-ignore-db=sys
binlog-ignore-db=mysql
binlog-ignore-db=information_schema
binlog-ignore-db=performance_schema

# 设置需要复制的数据库(可设置多个)
binlog-do-db=tp_music

replicate-do-db=tp_music


# 设置logbin格式
binlog_format=STATEMENT


# concurrency set
## change master 
change master to master_host='192.168.1.103',
master_port=3306, master_user='backup1',
master_password='123456',
master_log_file='mysql-bin.000003',
master_log_pos=1592;

start slave;
show slave status\G;


# dump sql files;
## out
sudo mysqldump -u root -p tp_music > tp_music-0629.sql
## in create database first
mysql -u root -p dbname < filename.sql
mysql > source jj.sql
master_log_file='mysql-bin.000003',
