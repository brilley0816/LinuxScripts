#!/usr/bin/env bash
JAVA_17_HOME="/usr/local/java/openjdk-17/jdk-17"
export JAVA_HOME=$JAVA_17_HOME
sudo rm /usr/bin/java
sudo ln -s $JAVA_HOME/bin/java /usr/bin/java
java -version
