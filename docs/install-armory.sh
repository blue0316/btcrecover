#!/bin/bash

set -e

LATEST="https://github.com/goatpig/BitcoinArmory/releases/download/v0.96/armory_0.96-gcc5.4_amd64.deb"

curl -LfsS --retry 10 -o '/tmp/armory.deb' "$LATEST"

sudo apt-get -q update
sudo apt-get -yq install gdebi-core

sudo gdebi -nq /tmp/armory.deb
rm /tmp/armory.deb
