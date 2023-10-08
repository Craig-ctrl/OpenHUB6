# OpenHUB6
OpenHUB6 is open, developer-friendly firmware for Safe.
This project is not affiliated with or endorsed by HUB6 Inc.


## OpenHub [Home Assistant](https://www.home-assistant.io/) and [Telegram Messenger](https://telegram.org/) Notifications

> [!IMPORTANT]
> You must have William Franzin's OpenHub image installed and working on your Safe device.
> Or build the image yourself, as I haven't tried.

1. Connect to OpenHub from your laptop (192.168.255.1)
2. Install Mosquitto MQTT Client on OpenHub
   - First remove libmosquitto-ssl (I'm not using SSL in MQTT)
     - Menu: System➡️Software➡️Installed Tab
     - Click the remove button beside libmosquitto-ssl
   - Download the following Mosquitto packages to your laptop from:
     - [Package List](https://downloads.openwrt.org/releases/19.07.8/packages/mips_24kc/packages/)
     - libmosquitto-nossl_1.6.15_mips_24kc.ipk
     - mosquitto-client-nossl_mips_24kc.ipk
   - Upload the above packages
     - Menu: System➡️Software➡️Upload Package Button
4. Install openssh-sftp-server (easier to upload files)
5. Upload the two new config files [here](/openhub6/openhub6/files/etc/config) to OpenHub **/etc/config/**:
   - alarm-event
   - alarm-notify
6. Upload the two new User Interface file [here](/openhub6/openhub6/files/usr/lib/lua/luci/model/cbi/security-module) to OpenHub **/usr/lib/lua/luci/model/cbi/security-module/**:
   - alarm-notify.lua
   - alarm-event.lua
7. Upload the updated Menu file [here](/openhub6/openhub6/files/usr/lib/lua/luci/controller/security) to OpenHub **/usr/lib/lua/luci/controller/security/**:
   - security.lua
8. Upload the new Event Notifier scripts [here](/openhub6/openhub6/files/root) to OpenHub **/root/**:
   - notify-home.sh
   - notify-push.sh
   - notify-telegram.sh
9. You will need to change the "file permissions" on the Event Notifier scripts.
   - Include the ability to "Execute" the script
11. Upload the updated DSC IT-100 Listener script [here](/openhub6/openhub6/files/usr/bin) to OpenHub **/usr/bin/**:
    - dsc-it100
11. **Reload the dsc-it100 script:**
    - Open the Luci User Interface (192.168.255.1)
    - System➡️Startup➡️dsc-it100➡️RESTART

## OpenHub6 Interface Updates

<img src="/assets/alarm_events.jpg" width="25%" height="25%" />
<img src="/assets/notifications.jpg" width="25%" height="25%" />

## 🏠 Home Assistant Setup

Add to your **configuration.yaml**:
  - The configuration.yaml is found [here](/home-assistant/configuration.yaml)
  - Add and name your zones to match with your alarm panel
  - Update the "device_class" to the type of sensor

<img src="/assets/home_assist_alarm.png" width="25%" height="25%" />

## 📨 Telegram Setup

1. Create a bot
   1. Enter @Botfather in the search tab and choose this bot.
   2. Enter “/newbot” and enter the name for your bot
   3. Copy the HTTP API token (Add to OpenHub)
2. Click the link to your new bot.
3. Press or type "/start"
4. Log in to Openub Luci interface (192.168.255.1)
   - Go to the Notifications Tab and add your Telegram API token & Chat ID

