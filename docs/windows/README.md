
# Windows 11 Installation and Optimization Guide  
A comprehensive guide to installing and optimizing Windows 11, especially for users leveraging AI video rendering capabilities with modern graphics cards.

<details>

## Table of Contents
- [Prerequisites](#prerequisites)
- [Installation Steps](#installation-steps)
- [Post-Install Configuration](#post-install-configuration)
- [Optimizing Video Performance](#optimizing-video-performance)
- [Enhancing Audio and Visual Experience](#enhancing-audio-and-visual-experience)
- [Security Features](#security-features)
- [Removing Bloatware](#removing-bloatware)
- [Troubleshooting](#troubleshooting)

</details>

---

## Prerequisites
Before proceeding with the installation, ensure the following:
1. **Hardware Compatibility**: Verify if your hardware is compatible with Windows 11 using Microsoft's official checker:  
   [Windows 11 System Requirements](https://www.microsoft.com/en-us/windows/windows-11-system-requirements)
2. **Backup Data**: Backup all important data using external storage or cloud services.
3. **Internet Connection**: A stable internet connection is required for the installation process.
4. **Power Supply**: Ensure your device has sufficient battery power or is connected to a power source.

---

## Installation Steps
### Step 1: Download Windows 11
- Visit Microsoft's official website to download the Windows 11 ISO file:
  [Download Windows 11](https://www.microsoft.com/en-us/software-download/windows11)
- Use the **Microsoft Media Creation Tool** to create a bootable USB installer.

### Step 2: Prepare for Installation
1. **Enable Fast Startup**:  
   - Press `Win + I` to open Settings.
   - Navigate to `System > Power & Sleep`.
   - Under "Startup," enable **Fast startup**.
   
2. **Set BIOS/UEFI to UEFI Mode**:  
   - Enter your motherboard's BIOS or UEFI settings (usually by pressing `F2`, `Delete`, or another key during boot).
   - Ensure that the system is set to boot in UEFI mode and not Legacy.
   - Also, that you're using XMP or EXPO on your DRAM settings, if supported. This will boost your RAM (see Task Mgr).

### Step 3: Install Windows 11
1. Insert the USB installer and restart your computer.
2. Press `F12` or `Escape` (depending on your system) to access the Boot Menu.
3. Select the USB drive to boot from.
4. Follow the on-screen instructions:
   - Skip creating a Microsoft account by pressing `Shift + F10` during the initial setup screen.
   - Enter local user credentials instead.
```
(shift + f10)
# type:
start ms-cxh:localonly
# press enter and it will go through a boot process, for you to create local account
# once the install concludes, unplug usb drive
```

### Step 4: Post-Install Updates
- After installation, update Windows 11 using the built-in Update feature:
  - Press `Win + I` to open Settings.
  - Navigate to `Windows Update > Check for updates`.

---

## Post-Install Configuration
### Install Apps with winget or other package manager
1. [What is winget](winget.md)
2. Enable Developer Tools (optional)

---

## Optimizing Video Performance
### NVIDIA GPU Optimization
1. Install the latest NVIDIA drivers from the NVIDIA App
2. Enable NVIDIA RTX features:
   - Open `NVIDIA Control Panel`.
   - Navigate to `Display > Game Settings > In-Game_overlay`.
   - Enable **RTX Ray Tracing** and **DLSS (Deep Learning Super Sampling)**.
   - Both RTX HDR and RTX VSR should be enabled

### AMD GPU Optimization
1. Install the latest AMD drivers from the AMD's website
2. Enable Radeon Boost and FSR (FidelityFX Super Resolution):
   - Open `Radeon Settings`.
   - Navigate to `Performance > Image Quality`.
   - Enable **FSR** for upsampling.

### Auto HDR
1. Enable Auto HDR in Windows:
   - Press `Win + I` to open Settings.
   - Go to `System > Display > HDR`.
2. Ensure your monitor supports HDR and has the necessary settings enabled.

---

## Enhancing Audio and Visual Experience
### Spatial Sound
- Enable spatial sound for a immersive audio experience:
  1. Press `Win + I` to open Settings.
  2. Navigate to `Sounds & Audio Devices > Spatial Sound`.
  3. Select **Windows Sonic for Headphones**.

### Media Players with AI Support
- **VLC Media Player (RTX Upscaler)**:  
   Download and use specifically vlc version 3.0.19. This version strictly supports vsr/hdr: https://downloads.videolan.org/testing/vlc-rtx-upscaler/.
- **MPC-BE with madVR (What I use)**:
   A powerful combination for high-quality video playback.
- Use winget to install: 
 ```
 winget install MPC-BE.MPC-BE -e
 
 winget install --id=CodecGuide.K-LiteCodecPack.Mega -e
 ```
- (screenshot):

<img width="1120" height="530" alt="mpc-be64_43FjbRfgZI" src="https://github.com/user-attachments/assets/e9d78a5a-ca78-4cc1-b5e2-13428e1fc4e4" />

---

### 🎯 Bottom Line
- MPC-BE + madVR is the highest‑quality video playback setup available on Windows:
- madVR handles HDR, tone‑mapping, and upscaling
- MPC handles playback

### Tradeoffs
- GPU requirements: madVR's top modes (super-res, complex HDR mapping) are GPU-intensive for older GPU's.
- Complexity: madVR has many settings; achieving "reference" results requires reading guides and tuning, to match display/output.

---

## Security Features
### Enable DNS over TLS (DoT)
- See [dns over tls script repo](https://github.com/divemarkus/dns/blob/main/Configure-DoT.ps1)

### Threat Hunting with OSQuery
- Use the provided OSQuery scripts to identify potential threats:
  - For more details, visit [OSQuery Scripts](https://github.com/divemarkus/osquery/blob/main/W11-Threat-Hunting-v1).

---

## Removing Bloatware
### Clean Up Windows 11 Bloatware
- Use **W11 Debloat** to remove unnecessary W11 junk:
  - [W11 Debloat](https://github.com/raphire/win11debloat)
  - [Logfile to show what's being removed](../windows/debloat/Win11Debloat.log)

---

### RGB Lighting Control
- Install OpenRGB or SignalRGB for custom lighting effects:

---

## Additional Notes
- **Scheduled Updates**: Use winget to schedule regular updates.
- **System Maintenance**: Regularly clean up temporary files and manage startup programs using tools like CCleaner or Task Manager.

--- 

## More Information
For further assistance, visit the following resources:
- [Windows 11 Documentation](https://learn.microsoft.com/en-us/windows)
- Google

---
