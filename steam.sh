#!/bin/bash

################################################################
# Creator: battleoverflow                                      #
# Learn more: https://github.com/battleoverflow/steam-for-kali #
################################################################

echo ""
echo "Creator: battleoverflow (https://github.com/battleoverflow)"
echo "Version: 0.1.4"
echo "Learn more: https://github.com/battleoverflow/steam-for-kali"
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

echo -n "Would you like to open Steam (y/n)? "
read openSteam

if [ "$openSteam" == "y" ]
then
    steam
else
    echo ""
    echo "Thank you for using Steam for Kali. Have a good day!"
fi
