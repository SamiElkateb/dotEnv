#!/usr/bin/env bash

installTmux(){
    if [[ $platform == 'mac' ]] ; then
        brew_install tmux
    elif [[ $platform == 'linux' ]] ; then
        apt_install tmux
    elif [[ $platform == 'windows' ]] ; then
        echo "Windows not supported for tmux yet"
    fi
}