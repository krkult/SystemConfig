#!/bin/bash

apt-get update
apt-get upgrade
apt-get -y install vim sudo apt-utils

apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common

curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -

apt-key fingerprint 0EBFCD88

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") $(lsb_release -cs) stable edge"

apt-get update

apt-get -y install docker-ce