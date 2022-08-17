#!/usr/bin/env bash
iwd=$(pwd)
source ./bash/utils.sh
for FILE in ./bash/*; do 
if [ $FILE != './bash/software' ] ; then 
    source $FILE
fi; done

getPlatform

if [[ $platform == 'mac' ]] ; then
    installMacSpecific
elif [[ $platform == 'linux' ]] ; then
    installLinuxSpecific
elif [[ $platform == 'windows' ]] ; then
    installWindowsSpecific
fi

standard_install jq

for FILE in ./bash/software/* ; do source $FILE ; done

# SHOULD_INSTALL=$(cat "$iwd/install.json" | jq -r ".global.neovim")
# if($SHOULD_INSTALL == 'true') ; then
#     echo 'should install neovim'
#     installNeovim
# fi

# SHOULD_INSTALL=$(cat "$iwd/install.json" | jq -r ".config.apply")
# if($SHOULD_INSTALL == 'true') ; then
#     echo 'should apply config'
#     applyConfig
#     echo 'apply config'
# fi

