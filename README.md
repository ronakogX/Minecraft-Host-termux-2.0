# Minecraft Server on Android with Termux

> **📋 Disclaimer**: This is a recreation of the original project by [drmatoi/minecraft](https://github.com/drmatoi/minecraft). All credits to the original author for the core concept and implementation.

> **⭐ If you like this project, please leave a star!**

A comprehensive script for Termux that enables you to host a Minecraft server directly on your Android device.

## 📋 Prerequisites

- **Termux** (Updated F-Droid Version) - [Download here](https://f-droid.org/de/packages/com.termux/)
- **⚠️ Important**: This script **does NOT work on Android 11**

## 🚀 Installation

### First Time Setup

Copy and paste these commands into Termux:

```bash
pkg install git
git clone https://github.com/ronakogX/Minecraft-Host-termux-2.0
cd Minecraft-Host-termux-2.0
chmod +x START.sh
./START.sh
```

### Already Installed?

To launch the server again:

```bash
cd Minecraft-Host-termux-2.0
chmod +x START.sh
./START.sh
```

## 🎮 Launcher Interface

The launcher provides an intuitive menu system (interface may vary with updates):

![Launcher Screenshot](https://github.com/user-attachments/assets/7bd701fd-4459-48cd-8741-602146ba394a)

## 🌐 Server Configuration

### Finding Your Server IP

After completing the initial setup, you'll need your device's IP address:

1. The launcher will redirect you to a website showing your IP information
2. **Important**: Set your IP to "STATIC" to prevent it from changing
3. Alternative IP checker: [dein-ip-check.de](https://www.dein-ip-check.de)

![IP Configuration](https://github.com/user-attachments/assets/79705d4f-6607-4101-81e1-72f9a5f8a8c7)

### Server Management

#### Stopping the Server
Use the `stop` command in the terminal (only works when server is online):

![Stop Command](https://github.com/user-attachments/assets/43def0ac-6d6d-4c12-bac6-4eee9ee2bf3c)

#### Other Commands
All standard Minecraft server commands can be executed through the Termux terminal:

![Server Commands](https://github.com/user-attachments/assets/8a6fe155-265c-4ef7-900f-89015ab370db)

### FTP Configuration

Configure your server easily using an FTP client:

- **Server**: `sftp://[YOUR_IP_ADDRESS]`
- **Username**: Any username (e.g., `drmatoi`)
- **Password**: Password set during server launch
- **Port**: `8022` (Android standard port)

![FTP Configuration](https://github.com/user-attachments/assets/be017e47-9f73-4e49-9ca7-f94ba65f4426)

*Note: FTP connection is available only while the server is running*

## 💾 RAM Configuration

Choose your RAM allocation when starting the server:

- **Option 1**: 4GB RAM
- **Option 2**: 8GB RAM  
- **Option 3**: 12GB RAM

> **⚠️ Warning**: Use maximum 50% of your device's total RAM
> 
> Example: 8GB device RAM = 4GB server RAM maximum
> 
> Exceeding this may crash Termux or your Android device

## 🎯 Minecraft Versions

Version 4.0.0 supports three Minecraft versions:

- **1.21.8**
- **1.16.5** 
- **1.19.2**

**Important Notes**:
- Each version creates a **separate world**
- Worlds can use different RAM settings
- Worlds are **not compatible** across versions
- More versions planned for future releases

## ⏱️ Server Uptime

Your server remains online as long as:

✅ Device is connected to the internet
✅ Sufficient memory and RAM available  
✅ Termux application remains open
✅ Script continues running

## 📝 Changelog

### Version 1.0.1
- ➕ Added new Minecraft version: 1.21.8
- 🔄 Remake version with updated features
### Version Beta 4.0.0
- ➕ Added general menu for version selection
- ➕ New Minecraft versions: 1.16.5 and 1.19.2
- 🔄 New START.sh launcher file

### Version 3.0.0
- ➖ Removed unnecessary ABOUT section
- ➕ Added direct Telegram contact link
- ➖ Removed SERVER UP-TIME section
- ➖ Removed alwaysonline.sh (integrated into launcher)
- 🎯 Focused on Minecraft 1.21.8
- ➖ Removed EXIT option (use `stop` command instead)

## 🔄 Update/Reset Launcher

To update or reset your installation:

```bash
rm -rf minecraft
git clone https://github.com/drmatoi/minecraft
cd minecraft
chmod +x launcher.sh
./launcher.sh
```

## 🤝 Support & Contact

**Developer**: RONAK_OG

- **Email**: ronakog69@gmail.com
- **Instagram**: [@dev.ronakog](https://www.instagram.com/dev.ronakog/)

---

## 🙏 Credits

Original project: [drmatoi/minecraft](https://github.com/drmatoi/minecraft)

**Thank you for using this script !** 

If you found it helpful:
- ⭐ Star this repository
- 🔄 Share with others
- 💬 Report issues or suggest improvements

---

*Your friendly developer, RONAK_OG* 😄
