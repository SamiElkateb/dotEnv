#!/usr/bin/env bash

installWindowManager(){
    if [[ $platform == 'mac' ]] ; then
        brew_install koekeishiya/formulae/yabai
        brew_install koekeishiya/formulae/skhd
        brew services start yabai
        brew services start skhd
    elif [[ $platform == 'linux' ]] ; then
      echo "No window manager configured for Linux yet (see i3)"
    elif [[ $platform == 'windows' ]] ; then
      echo "No window manager configured for Windows yet (see bug.n)"
    fi
}
