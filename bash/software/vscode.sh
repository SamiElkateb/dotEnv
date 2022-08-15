#!/usr/bin/env bash

installVSCode(){
    if [[ $platform == 'mac' ]] ; then
        brew_install visual-studio-code
    elif [[ $platform == 'linux' ]] ; then
        echo "VSCode installation not configured for linux yet"
    elif [[ $platform == 'windows' ]] ; then
        choco_install vscode
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
