#!/bin/bash

##########################################################
# Creator: Hifumi1337                                    #
# Version: 0.1.3                                         #
# Project: https://github.com/Hifumi1337/steam-for-kali  #
##########################################################

echo ""
echo "Creator: Hifumi1337 (https://github.com/Hifumi1337)"
echo "Version: 0.1.3"
echo "Project: https://github.com/Hifumi1337/steam-for-kali"
echo ""

function installSteam() {
    wget http://media.steampowered.com/client/installer/steam.deb

    # Add the i386 architecture
    sudo dpkg --add-architecture i386

    # Pull down new architecture
    sudo apt-get update
    
    # Shared Objects & Drivers (Dependencies)
    sudo apt install libgl1-mesa-dri:i386 libgl1:i386
    sudo apt install nvidia-driver-libs:i386

    # Install Steam
    sudo apt install ./steam.deb

    # Remove debian clutter
    sudo rm steam.deb
}

installSteam

function testSteam(){
    steam
}


echo -n "Would you like to open Steam (y/n)? "
read openSteam

if [ "$openSteam" == "y" ]
then
    testSteam
else
    echo ""
    echo "Thank you for using Steam for Kali. Have a good day!"
fi