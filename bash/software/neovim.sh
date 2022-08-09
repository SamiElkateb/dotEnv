#!/usr/bin/env bash

dependencies(){
    if [[ $platform == 'mac' ]] ; then
        brew install ripgrep
    elif [[ $platform == 'linux' ]] ; then
        sudo apt-get install ripgrep
    elif [[ $platform == 'windows' ]] ; then
        choco install ripgrep
    fi
}
customizeNeovim(){
    cd ~
    mkdir -p .config
    cd .config
    mkdir -p nvim
    if [[ $platform == 'mac' ]] ; then
        git clone https://github.com/SamiElkateb/neovim.git ~/.config/nvim
    elif [[ $platform == 'linux' ]] ; then
        git clone https://github.com/SamiElkateb/neovim.git ~/.config/nvim
    elif [[ $platform == 'windows' ]] ; then
        git clone https://github.com/SamiElkateb/neovim.git $LOCALAPPDATA/nvim
    fi
}

installNeovim(){
    if [[ $platform == 'mac' ]] ; then
        brew_install neovim 
    elif [[ $platform == 'linux' ]] ; then 
        yes | sudo apt install neovim
    elif [[ $platform == 'windows' ]] ; then
        choco install neovim
    fi
    customizeNeovim
}