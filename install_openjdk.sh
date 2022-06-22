#!/usr/bin/env bash
JAVA_VERSION_PKG="~/temp/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz"
if [ ! -d /usr/local/java ]; then
 sudo mkdir /usr/local/java
fi
if [ ! -d /usr/local/java/openjdk-8 ]; then
 sudo mkdir /usr/local/java/openjdk-8
fi
sudo tar -xvzf ~/temp/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz -C /usr/local/java/openjdk-8/


