#!/bin/bash

USER_NAME="$(whoami)"
HOME_DIR=""

if [ "$USER_NAME" == "root" ]; then
    HOME_DIR="/root"
else
   
    HOME_DIR="/home/$USER_NAME"
fi

echo "=== Installing bashrc for $USER_NAME ==="

# backup bashrc
mv -v $HOME_DIR/.bashrc $HOME_DIR/.bashrc~

# install new one
cp -v ./bashrc.txt $HOME_DIR/.bashrc

