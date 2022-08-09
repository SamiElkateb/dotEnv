#!/usr/bin/env bash

addSourceZshrc(){
    grep "source $HOME/.config/zsh/.zshrc" ~/.zshrc
    if [[ $? != 0 ]] ; then
        if [[ $platform == 'mac' ]] ; then
            cat "source $HOME/.config/zsh/.zshrc" > ~/.zshrc 
        elif [[ $platform == 'linux' ]] ; then
            cat "source $HOME/.config/zsh/.zshrc" > ~/.zshrc 
        elif [[ $platform == 'windows' ]] ; then
            echo "Windows not supported for zsh yet"
        fi
    else
        echo "zsh already installed"
    fi
}

customizeZsh(){
    test -f ~/.conf/zsh/.zshrc
    if [[ $? != 0 ]] ; then
        if [[ $platform == 'mac' ]] ; then
            cd ~
            mkdir -p .config
            cd .config
            mkdir -p nvim
            git clone https://github.com/SamiElkateb/zsh_config.git ~/.config/zsh
            addSourceZshrc
        elif [[ $platform == 'linux' ]] ; then
            cd ~
            mkdir -p .config
            cd .config
            mkdir -p nvim
            git clone https://github.com/SamiElkateb/zsh_config.git ~/.config/zsh
            addSourceZshrc
        elif [[ $platform == 'windows' ]] ; then
            echo "Windows not supported for zsh yet"
        fi
    else
        echo "zsh already installed"
    fi
}

