#!/usr/bin/env bash
iwd=$(pwd)
source ./bash/utils.sh
for FILE in ./bash/*; do 
if [ $FILE != './bash/software' ] ; then 
    source $FILE
fi; done
for FILE in ./bash/software/* ; do source $FILE ; done

getPlatform

if [[ $platform == 'mac' ]] ; then
    installMacSpecific
elif [[ $platform == 'linux' ]] ; then
    installLinuxSpecific
elif [[ $platform == 'windows' ]] ; then
    echo "Windows not supported yet"
fi

if($INSTALL_NEOVIM) ; then
    installNeovim
fi

if($CUSTOMIZE_ZSH) ; then
    customizeZsh
fi

if($INSTALL_RIPGREP) ; then
    standard_install ripgrep
fi

if($INSTALL_NERDFONT) ; then
    installNerdFont
fi