# OpenHUB6
OpenHUB6 is open, developer-friendly firmware for Safe.
This project is not affiliated with or endorsed by HUB6 Inc.


## [Home Assistant](https://www.home-assistant.io/) and [Telegram Messenger](https://telegram.org/) Notifications

> [!IMPORTANT]
> You must have William Franzin's OpenHub image installed and working on your Safe device.
> I have not built a new image, hopefully [@wfranzin](https://github.com/wfranzin) can help with that.

1. Connect to OpenHub from your laptop (192.168.255.1)
2. Install Mosquitto MQTT Client on OpenHub
   - First remove libmosquitto-ssl (I'm not using SSL in MQTT)
     - Menu: System➡️Software➡️Installed Tab
     - Click the remove button beside libmosquitto-ssl
   - Download the following Mosquitto packages to your laptop from:
     - [Package List](downloads.openwrt.org/releases/19.07.8/packages/mips_24kc/packages)
     - libmosquitto-nossl_1.6.15_mips_24kc.ipk
     - mosquitto-client-nossl_mips_24kc.ipk
   - Upload the above packages
     - Menu: System➡️Software➡️Upload Package Button
4. Install openssh-sftp-server (easier to upload files)
5. Upload the two new config files [here](/openhub6/openhub6/files/etc/config) to OpenHub **/etc/config/**:
   - alarm-event
   - alarm-notify
6. 
