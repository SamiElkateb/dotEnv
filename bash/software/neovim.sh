#!/usr/bin/env bash

installDependencies(){
    standard_install ripgrep
    if [[ $platform == 'windows' ]] ; then
        choco_install mingw
    fi
}

customizeNeovim(){ 
    if [[ $platform == 'mac' ]] ; then
        test -f ~/.config/nvim/init.lua
        if [[ $? != 0 ]] ; then
            cd ~
            mkdir -p .config
            cd .config
            mkdir -p nvim
            git clone https://github.com/SamiElkateb/neovim.git ~/.config/nvim
        fi
    elif [[ $platform == 'linux' ]] ; then
        test -f ~/.config/nvim/init.lua
        if [[ $? != 0 ]] ; then
            cd ~
            mkdir -p .config
            cd .config
            mkdir -p nvim
            git clone https://github.com/SamiElkateb/neovim.git ~/.config/nvim
        fi
    elif [[ $platform == 'windows' ]] ; then
        test -f $LOCALAPPDATA/nvim/init.lua
        if [[ $? != 0 ]] ; then
            cd $LOCALAPPDATA
            mkdir -p nvim
            git clone https://github.com/SamiElkateb/neovim.git $LOCALAPPDATA/nvim
        fi
    fi
}

installNeovim(){
    standard_install neovim
    customizeNeovim
    installDependencies
}