#!/usr/bin/env bash
JAVA_8_HOME="/usr/local/java/openjdk-8/java-se-8u41-ri"
export JAVA_HOME=$JAVA_8_HOME
sudo rm /usr/bin/java
sudo ln -s $JAVA_HOME/bin/java /usr/bin/java
java -version
