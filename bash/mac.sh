#!/usr/bin/env bash
installMacSpecific(){
    which -s brew
    if [[ $? != 0 ]] ; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo "Updating Homebrew"
        brew update
    fi

    brew_install iterm2
    
    which xcode-select
    if [[ $? != 0 ]] ; then
      yes | xcode-select --install
    else
        echo "xcode command line already installed"
    fi
}
