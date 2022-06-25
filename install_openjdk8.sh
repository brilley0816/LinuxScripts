#!/usr/bin/env bash
JAVA_VERSION_PKG="~/temp/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz"
if [ ! -d /usr/local/java ]; then
 sudo mkdir -p /usr/local/java
fi
if [ ! -d /usr/local/java/openjdk-8 ]; then
 sudo mkdir -p /usr/local/java/openjdk-8
fi
sudo tar -xvzf ~/temp/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz -C /usr/local/java/openjdk-8/
JAVA_8_HOME="/usr/local/java/openjdk-8/java-se-8u41-ri"
sudo rm /usr/bin/java
sudo ln -s $JAVA_8_HOME/bin/java /usr/bin/java
java -version


