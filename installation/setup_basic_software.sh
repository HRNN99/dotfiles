#!/bin/bash

# List of required programs
required_programs=(
    curl
    wget
    htop
    rsync
    sshpass
    neofetch
    mlocate
    zip
    unzip
    remmina
    gedit
    kdeconnect
    okular
    neovim
    vlc
    ranger
    spotify-client
    translate-shell
    npm
    rofi
)

echo "Updating package list..."
sudo apt-get update

total_programs=${#required_programs[@]}

# Install required programs one by one
for ((i = 0; i < total_programs; i++)); do
    program=${required_programs[i]}
    echo "Installing $program... ($((i + 1)) of $total_programs)"
    sudo apt-get install -y $program
done

echo "All programs have been installed."
