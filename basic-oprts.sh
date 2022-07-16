
scp -r username@address:/home/usrname/seer/* ./
scp -r install_oh-my-zsh.sh lighthouse@43.142.117.135:/home/lighthouse/brilley_scripts/


# get the version of the ubuntu centos
lsb_release -a uname -a cat /etc/redhat-release 

# change the file or directory name
mv filename newfilename
mv dirname newdirname



# ssh related
ssh-keygen -t rsa -C 'yanbrilley@gmail.com'
ssh-copy-id username@address

# sftp can build based on ssh services so that they can use the same port


# process related 
netstat -nlt | grep 22


# git related 
git config --global 
git config -l


# system config
cat /etc/hosts
cat /etc/sudoers
cat /etc/shells
systemctl status appname
systemctl restart appname
systemctl start appname
systemctl enable appname

# mysql related

# memory and cpu related
ps -l
C - Cpu SZ Memory size
ps -ef | grep sshd

top #like task manager in windows10  dynamic
top -p PID-Number
free 

df # show the usage of disk
df -h

## mysql related
#show users
mysql -u root -p -e "select user, host from mysql.user;"

## nginx related 
# reload the config file and restart
sudo nginx -s reload
# -s mean signal stop start 
sudo nginx -s stop  

# start a java project in daemon
sudo nohup java -jar music-webchat-brilley-0.0.1-SNAPSHOT.jar &

# modify the time zone
date
date -R ## 查看时区

## 修改为+8时区
cp /usr/shar/zoneinfo/Asia/Chongqing /etc/localtime

# how to add a user in windows10
net user username password /add
## win+R netplwiz to show users

