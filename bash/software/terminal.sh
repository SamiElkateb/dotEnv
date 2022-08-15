#!/usr/bin/env bash

addSourceZshrc(){
    grep "/.config/zsh/.zshrc" ~/.zshrc &>/dev/null
    if [[ $? != 0 ]] ; then
        if [[ $platform == 'mac' ]] ; then
            echo "source $HOME/.config/zsh/.zshrc" >> ~/.zshrc
            source ~/.zshrc &>/dev/null
        elif [[ $platform == 'linux' ]] ; then
            echo "source $HOME/.config/zsh/.zshrc" >> ~/.zshrc
            source ~/.zshrc &>/dev/null
        elif [[ $platform == 'windows' ]] ; then
            echo "Windows not supported for zsh yet"
        fi
    else
        echo "zsh already customized"
    fi
}

# customizeZsh(){
#     test -f ~/.config/zsh/.zshrc
#     if [[ $? != 0 ]] ; then
#         if [[ $platform == 'mac' ]] ; then
#             cd ~
#             mkdir -p .config
#             cd .config
#             mkdir -p nvim
#             git clone https://github.com/SamiElkateb/zsh_config.git ~/.config/zsh
#             addSourceZshrc
#         elif [[ $platform == 'linux' ]] ; then
#             cd ~
#             mkdir -p .config
#             cd .config
#             mkdir -p nvim
#             git clone https://github.com/SamiElkateb/zsh_config.git ~/.config/zsh
#             addSourceZshrc
#         elif [[ $platform == 'windows' ]] ; then
#             echo "Windows not supported for zsh yet"
#         fi
#     else
#         echo "zsh already customized"
#     fi
# }

