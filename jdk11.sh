#!/usr/bin/env bash
JAVA_11_HOME="/usr/local/java/openjdk-11/jdk-11"
export JAVA_HOME=$JAVA_11_HOME
echo $JAVA_HOME
sudo rm /usr/bin/java
sudo ln -s $JAVA_HOME/bin/java /usr/bin/java
java -version
