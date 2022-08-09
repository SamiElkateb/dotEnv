#!/usr/bin/env bash

installVSCode(){
    which code
    if [[ $? != 1 ]] ; then
        if [[ $platform == 'mac' ]] ; then
            brew install --cask visual-studio-code
        elif [[ $platform == 'linux' ]] ; then
            yes | sudo apt install neovim
        elif [[ $platform == 'windows' ]] ; then
            choco install vscode -y
        fi

    else
        echo "vscode already installed"
    fi
}

# VS CODE API DOCS:
# code --extensions-dir <dir>
#     Set the root path for extensions.
# code --list-extensions
#     List the installed extensions.
# code --show-versions
#     Show versions of installed extensions, when using --list-extension.
# code --install-extension (<extension-id> | <extension-vsix-path>)
#     Installs an extension.
# code --uninstall-extension (<extension-id> | <extension-vsix-path>)
#     Uninstalls an extension.
# code --enable-proposed-api (<extension-id>)
#     Enables proposed API features for extensions. Can receive one or more extension IDs to enable individually.