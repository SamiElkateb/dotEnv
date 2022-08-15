# MacOs
## System Preferences
### > Accessibility > Display
Select Reduce Motion

### > Mission Control
Select Displays have seperate spaces
Disable Automatically rearrange spaces based on most recent use
Remove all mouse and Keyboard shortcuts

### > Keyboard > Shortcuts
#### > Mission control
Deselect all
Map switch to desktop to CTRL + Number

#### > Spotlight search
Map show spotlight search to ALT + d

# Linux

1. Install firewall: https://github.com/evilsocket/opensnitch

# Windows
## Download ubuntu image
https://ubuntu.com/download/desktop

## Install Windows Subsystem for Linux
1. Open Powershell as administrator
2. Run the command : `set-executionpolicy remotesigned`
3. Open the windows.ps1 script

1. Open PowerShell as administrator
2. Run `bcdedit /set hypervisorlaunchtype auto`
3. Run `wsl --install`
4. Restart the computer
5. Choose `wsl --list --online`
6. Install `wsl --install -d DISTRO_NAME`
