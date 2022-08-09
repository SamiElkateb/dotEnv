#!/usr/bin/env bash

installTmux(){
    which tmux
    if [[ $? != 0 ]] ; then
        if [[ $platform == 'mac' ]] ; then
            brew install tmux 
        elif [[ $platform == 'linux' ]] ; then
            yes | sudo apt install tmux
        elif [[ $platform == 'windows' ]] ; then
            echo "Windows not supported for tmux yet"
        fi
    else
        echo "tmux already installed"
    fi
}