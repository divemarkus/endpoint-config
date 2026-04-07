# Chocolatey install scripts
Chocolatey is a package manager for windows, allowing you to install apps with a single command. This is how you install Google Chrome using chocolatey: ```choco install GoogleChrome```

Chocolatey is like Homebrew for macOS. YUM or DNF, or APT for Linux.


See [github repo](https://github.com/chocolatey/choco)

### Usage (paste the code below)
**First install Chocolatey using cmd prompt (right-click Command Prompt and run as Administrator)**

```
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
```

**Then download and run the choco script**

***Take note, look at the choco-install-apps.ps1, it contains list of apps to be installed. Make your own app selection or use what I have. To make your own, edit the code below. More instructions below.***

```
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://github.com/divemarkus/choco-install-apps/blob/main/choco-install-apps.ps1'))"
```

***To make your own choco-install-apps.ps1:***
* Download the file and save to root of C:\choco-install-apps.ps1
* Edit and save the file, to add or remove your own packages
* Skip the last command above to install package, instead use this

```
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('C:\choco-install-apps.ps1'))"
```

### Install and post-install
* The install will go through, and some apps will require you to acknowledge usage
* Be patient, esp if you have many packages to install
* Once the install concludes, verify that all apps have been acknowledged
* Reboot
* If you want to add/remove packages use the command below

```choco install package-name```
```choco uinstall package-name```

### Troubleshooting
For an PowerShell related errors, look at this documentation from Microsoft:

https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7

***Set execution policy to loosen up PowerShell. You can bring it back after installing apps with choco***

**Run commands with elevated PowerShell**

```PS> Get-ExecutionPolicy```

```PS> Set-ExecutionPolicy Bypass```

**Once you have everything sorted, bring back PowerShell to its original setup, by taking notes of what the original execution policy earlier**

### Documentation
Please see the [wiki](https://github.com/chocolatey/choco/wiki)

Give `choco.exe /?` a shot (or `choco.exe -h`). For specific commands, add the command and then the help switch e.g. `choco.exe install -h`.

List all installed apps `clist -lo` | upgrade all installed apps `cup all -y`

### Requirements
* .NET Framework 4.0
* PowerShell 2.0+

### More information
Check out [Chocolatey's homepage](https://chocolatey.org/) or this [github repo](https://github.com/chocolatey/chocolatey).
