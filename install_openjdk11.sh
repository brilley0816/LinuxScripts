#!/usr/bin/env bash

if [ ! -d /usr/local/java ]; then
 sudo mkdir -p /usr/local/java
fi
if [ ! -d /usr/local/java/openjdk-11 ]; then
 sudo mkdir -p /usr/local/java/openjdk-11
fi
sudo tar -xvzf ~/temp/openjdk-11+28_linux-x64_bin.tar.gz -C /usr/local/java/openjdk-11/
JAVA_11_HOME="/usr/local/java/openjdk-11/jdk-11"
sudo rm /usr/bin/java
sudo ln -s $JAVA_11_HOME/bin/java /usr/bin/java
java -version


