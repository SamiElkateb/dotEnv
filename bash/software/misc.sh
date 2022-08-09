#!/usr/bin/env bash

installNerdFont(){
    cd ~
    mkdir -p .bash_install_temp
    cd .bash_install_temp
    git clone --filter=blob:none --sparse git@github.com:ryanoasis/nerd-fonts
    cd nerd-fonts
    git sparse-checkout add patched-fonts/Hack
    if [[ $platform == 'mac' ]] ; then
        ./install.sh hack
    elif [[ $platform == 'linux' ]] ; then
        ./install.sh hack
    elif [[ $platform == 'windows' ]] ; then
        ./install.ps1 hack
    fi
    cd
    rm -rf  ~/.bash_install_temp
}