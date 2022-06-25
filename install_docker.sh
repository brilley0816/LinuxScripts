# remove purge uninstall
sudo yum remove docker \ docker-client \ docker-cli
yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

# install utils
sudo yum install -y yum-utils

# add repo for faster speed
yum-config-manager \
     --add-repo \
     http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

#install 
sudo yum install docker-ce docker-ce-cli containerd.io -y

yum list docker-ce --showduplicates | sort -r

yum install docker-ce-18.09.9 docker-ce-cli-18.09.9 containerd.io

#install the latest verion ,just input docker-ce

yum install docker-ce

# watch the service
systemctl start docker
systemctl enable docker // start the machine star

# create docker users group , maybe exists already!
sudo groupadd docker

# add the user to group docker
sudo usermod -aG docker username

# then restart docker!

#install docker-compose
sudo curl -L https://get.daocloud.io/docker/compose/releases/download/1.25.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

