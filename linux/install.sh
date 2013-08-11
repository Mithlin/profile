#!/bin/bash

mv /home/`whoami`/.vimrc /home/`whoami`/.vimrc~
mv /home/`whoami`/.bashrc /home/`whoami`/.bashrc~

cp ./vimrc.txt /home/`whoami`/.vimrc
cp ./bashrc.txt /home/`whoami`/.bashrc

