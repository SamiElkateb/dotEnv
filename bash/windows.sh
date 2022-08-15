#!/usr/bin/env bash

installWindowsSpecific(){
    SHOULD_INSTALL=$(cat "$iwd/install.json" | jq -r ".windows.virtualbox")
    if($SHOULD_INSTALL == 'true') ; then
        choco install virtualbox
    fi
}
