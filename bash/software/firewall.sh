
#!/usr/bin/env bash

installFirewall(){
    if [[ $platform == 'mac' ]] ; then
        brew_install little-snitch
    elif [[ $platform == 'linux' ]] ; then
        echo "No firewall configured for Linux yet"
    elif [[ $platform == 'windows' ]] ; then
        choco_install netlimiter
    fi
}
