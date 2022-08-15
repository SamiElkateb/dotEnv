#!/usr/bin/env bash

brew_install() {
    echo "Installing $1 ..."
    if brew list $1 &>/dev/null; then
        echo "${1} is already installed"
    else
        brew install $1 && echo "$1 is installed"
    fi
}

choco_install() {
    echo "Installing $1 ..."
    if choco list -lo | grep $1 &>/dev/null; then
        echo "${1} is already installed"
    else
        choco install $1 -y && echo "$1 is installed"
    fi
}

apt_install() {
    echo "Installing $1 ..."
    if dpkg -l $1 &>/dev/null; then
        echo "${1} is already installed"
    else
        yes | sudo apt-get install $1 && echo "$1 is installed"
    fi
}

standard_install(){
    if [[ $platform == 'mac' ]] ; then
        brew_install $1
    elif [[ $platform == 'linux' ]] ; then
        apt_install $1
    elif [[ $platform == 'windows' ]] ; then
        choco_install $1
    fi
}
