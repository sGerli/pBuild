#!/usr/bin/env bash
echo 'Installing Pebble SDK Dependencies...'

cd ~ 

# Get the Pebble SDK and toolchain
wget http://assets.getpebble.com.s3-website-us-east-1.amazonaws.com/sdk2/${PEBBLE_SDK}.tar.gz -O PebbleSDK.tar.gz
wget http://assets.getpebble.com.s3-website-us-east-1.amazonaws.com/sdk/arm-cs-tools-ubuntu-universal.tar.gz

# Build the Pebble directory
mkdir ~/pebble-dev

cd ~/pebble-dev

# Extract the SDK
tar -zxf ~/PebbleSDK.tar.gz

cd ~/pebble-dev/${PEBBLE_SDK}

# Extract the toolchain
tar -zxf ~/arm-cs-tools-ubuntu-universal.tar.gz

# Add the pebble tool to your path and reload your shell configuration
sudo echo 'export PATH=~/pebble-dev/${PEBBLE_SDK}/bin:$PATH' >> ~/.bash_profile
. ~/.bash_profile

export PATH=~/pebble-dev/${PEBBLE_SDK}/bin:$PATH

# Install pip and virtualenv
sudo apt-get install python-pip python2.7-dev
sudo pip install virtualenv

# Install the Python library dependencies locally
virtualenv --no-site-packages .env
source .env/bin/activate
pip install -r requirements.txt
deactivate







