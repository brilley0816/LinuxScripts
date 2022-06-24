# copy files from remote servers
scp -r username@address:/home/usrname/seer/* ./
scp -r install_oh-my-zsh.sh lighthouse@43.142.117.135:/home/lighthouse/brilley_scripts/


# get the version of the ubuntu centos
lsb_release -a
uname -a 
cat /etc/redhat-release

#change the file or directory name
mv filename newfilename
mv dirname newdirname



#ssh related
ssh-keygen -t rsa -C 'yanbrilley@gmail.com'
ssh-copy-id username@address

# sftp can build based on ssh services so that they can use the same port


# process related 
netstat -nlt | grep 22
