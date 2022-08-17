
#!/usr/bin/env bash
installLazygit(){
    if [[ $platform == 'mac' ]] ; then
        brew_install lazygit
    elif [[ $platform == 'linux' ]] ; then
        echo "No lazygit configured for Linux yet"
    elif [[ $platform == 'windows' ]] ; then
        choco_install lazygit
    fi
}
# TODO: Handle versionning
SHOULD_INSTALL=$(cat "$iwd/install.json" | jq -r ".global.lazygit.install")
if [[ $SHOULD_INSTALL=='true' ]] ; then
    VERSION=$(cat "$iwd/install.json" | jq -r ".global.lazygit.version")
    if [$VERSION == 'release'] | [$VERSION == 'null']; then
      installLazygit
    else
      installLazygit
    fi
fi
