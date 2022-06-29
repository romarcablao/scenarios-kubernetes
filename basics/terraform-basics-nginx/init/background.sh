#!/bin/bash

# terraform install
sudo apt-get update -y && sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform -y
touch /tmp/.initterraform

# setup workdir
mkdir -p ~/terraform-docker-demo && cd $_

# mark init finished
touch /tmp/.initfinished
