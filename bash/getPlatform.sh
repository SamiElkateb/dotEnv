#!/usr/bin/env bash

function getPlatform() {
    if [[ $OSTYPE == 'darwin'* ]]; then
        platform='mac'
    elif [[ $OSTYPE == 'linux'* ]]; then
        platform='linux'
    elif [[ $OSTYPE == 'msys'* ]]; then
        platform='windows'
    else
        echo "Unsupported platform"
        exit 1
    fi
}