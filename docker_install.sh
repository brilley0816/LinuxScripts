function install_docker_ce() {
    # installs and configures Docker CE
    echo "Installing Docker CE ..."
    sudo apt-get -qq update
    sudo apt-get install -y apt-transport-https ca-certificates software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt-get -qq update
    sudo apt-get install docker-ce=5:18.09.0~3-0~ubuntu-bionic docker-ce-cli=5:18.09.0~3-0~ubuntu-bionic containerd.io
    echo "Adding user to group 'docker'"
    sudo groupadd -f docker
    sudo usermod -aG docker $USER
    sleep 2
    sudo service docker restart
    echo "... restarted Docker service"
    if [ -n "${DOCKER_PROXY_URL}" ]; then
        echo "Configuring docker proxy ..."
        if [ -f /etc/docker/daemon.json ]; then
            if grep -q registry-mirrors /etc/docker/daemon.json; then
                sudo sed -i "s|registry-mirrors.*|registry-mirrors\": [\"${DOCKER_PROXY_URL}\"] |" /etc/docker/daemon.json
            else
                sudo sed -i "s|{|{\n  \"registry-mirrors\": [\"${DOCKER_PROXY_URL}\"],|" /etc/docker/daemon.json
            fi
        else
            sudo bash -c "cat << EOF > /etc/docker/daemon.json
{
  \"registry-mirrors\": [\"${DOCKER_PROXY_URL}\"]
}
EOF"
        fi
        sudo systemctl daemon-reload
        sudo service docker restart
        echo "... restarted Docker service again"
    fi
    sg docker -c "docker version" 
    echo "... Docker CE installation done"
    return 0
}

DOCKER_PROXY_URL=https://docker.mirrors.ustc.edu.cn
install_docker_ce
