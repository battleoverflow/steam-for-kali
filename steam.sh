#!/bin/bash

wget http://media.steampowered.com/client/installer/steam.deb

sudo apt install ./steam.deb

sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt install libgl1-mesa-dri:i386 libgl1:i386
sudo apt install nvidia-driver-libs:i386

steam
