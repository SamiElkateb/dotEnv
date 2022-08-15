#!/usr/bin/env bash
applyConfig(){ 
    REPOSITORY=$(cat "$iwd/install.json" | jq -r ".config.repository")
    if [[ $platform == 'mac' ]] ; then
        test -f $HOME/.config/yabai/yabairc
        if [[ $? != 0 ]] ; then
            cd ~
            mkdir -p .config
            git clone $REPOSITORY $HOME/.config/
        fi
    elif [[ $platform == 'linux' ]] ; then
        test -f $HOME/.config/yabai/yabairc
        if [[ $? != 0 ]] ; then
            cd ~
            mkdir -p .config
            git clone $REPOSITORY $HOME/.config/
        fi
    elif [[ $platform == 'windows' ]] ; then
        test -f $LOCALAPPDATA/yabai/yabairc
        if [[ $? != 0 ]] ; then
            cd $LOCALAPPDATA
            git clone $REPOSITORY $LOCALAPPDATA/
        fi
    fi
}
