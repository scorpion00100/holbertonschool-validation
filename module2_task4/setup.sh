#!/bin/bash
apt-get update && apt-get install -y make wget
wget https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_Linux-64bit.tar.gz
tar -xvf hugo_extended_0.109.0_Linux-64bit.tar.gz hugo
mv hugo /usr/local/bin/
rm hugo_extended_0.109.0_Linux-64bit.tar.gz
export PATH=$PATH:/usr/local/go/bin
cd /app
git clone https://github.com/scorpion00100/holbertonschool-validation
cd holbertonschool-validation/module1_task4/
make build
mv ./dist ../../
exit
