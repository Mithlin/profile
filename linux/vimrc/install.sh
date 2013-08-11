#!/bin/bash

USER_NAME="$(whoami)"
HOME_DIR=""

if [ "$USER_NAME" == "root" ]; then
    HOME_DIR="/root"
else
   
    HOME_DIR="/home/$USER_NAME"
fi

echo "=== Installing vimrc for $USER_NAME ==="

# backup vimrc
mv -v $HOME_DIR/.vimrc $HOME_DIR/.vimrc~

# install new one
cp -v ./vimrc.txt $HOME_DIR/.vimrc

