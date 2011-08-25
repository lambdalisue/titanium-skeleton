#!/bin/sh
#
# Install required packages
#
UNAME=`uname`

if [ `which npm` = '' ]; then
    if [ `uname` = 'Linux' ]; then
        # Install curl
        sudo apt-get install curl
    fi

    # Install npm
    sudo curl http://npmjs.org/install.sh | sudo sh
fi

# Install required packages
sudo npm -g install coffee-script
sudo npm -g install jitter

