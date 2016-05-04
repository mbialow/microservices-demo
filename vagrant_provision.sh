#!/usr/bin/env bash


echo "Installing wget"
sudo yum install -y wget

echo "Installing mc"
sudo yum install -y mc

echo "Installing Git.."
sudo yum install -y git

echo "Installing Maven.."
cd /opt
wget http://ftp.piotrkosoft.net/pub/mirrors/ftp.apache.org/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
tar xzf apache-maven-3.3.9-bin.tar.gz

echo "Installing Java 8.."
cd /opt
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u92-b14/jdk-8u92-linux-x64.tar.gz"
tar xzf jdk-8u92-linux-x64.tar.gz

sudo sh -c "echo 'export JAVA_HOME=/opt/jdk1.8.0_92' >> /etc/environment"
sudo sh -c "echo 'export MAVEN_HOME=/opt/apache-maven-3.3.9' >> /etc/environment"
sudo sh -c "echo 'export PATH=/opt/jdk1.8.0_92/bin:/opt/apache-maven-3.3.9/bin:$PATH' >> /etc/environment"