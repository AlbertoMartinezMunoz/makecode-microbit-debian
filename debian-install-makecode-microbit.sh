#!/bin/sh

# Install Node.js:
sudo apt-get install -y nodejs npm

# Install some dependencies:
sudo apt-get install -y git libsecret-1-dev
sudo npm install -g jake
sudo npm install -g typings
sudo npm install -g pxt

# Clone repos from GitHub:
git clone https://github.com/Microsoft/pxt
git clone https://github.com/Microsoft/pxt-common-packages
git clone https://github.com/microsoft/pxt-microbit.git

cd pxt
npm install
typings install
jake

cd ..
cd pxt-common-packages
npm install
sudo npm link ../pxt

cd ..
cd pxt-microbit
npm install
sudo npm link ../pxt
sudo npm link ../pxt-common-packages
