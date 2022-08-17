#!/usr/bin/env bash

# SHOULD_INSTALL=$(cat "$iwd/install.json" | jq -r ".global.firefox.install")
# if($SHOULD_INSTALL == 'true') ; then
#     VERSION=$(cat "$iwd/install.json" | jq -r ".global.firefox.version")
#     if [$VERSION == 'release'] | [$VERSION == 'null']; then
#         standard_install firefox
#     else
#         standard_install firefox
#     fi
# fi


# SHOULD_INSTALL=$(cat "$iwd/install.json" | jq -r ".global.chrome.install")
# if($SHOULD_INSTALL == 'true') ; then
#     VERSION=$(cat "$iwd/install.json" | jq -r ".global.chrome.version")
#     if [$VERSION == 'release'] | [$VERSION == 'null']; then
#         standard_install firefox
#     else
#         standard_install firefox
#     fi
# fi
