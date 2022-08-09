# Install Windows Subsystem for Linux

1. Open PowerShell as administrator
2. Run `bcdedit /set hypervisorlaunchtype auto`
3. Run `wsl --install`
4. Restart the computer
5. Choose `wsl --list --online`
6. Install `wsl --install -d DISTRO_NAME`