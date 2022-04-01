## Maximize the  refresh rate on Oneplus devices running android 11+

Based on this page:
https://forum.xda-developers.com/t/anyone-else-having-issues-getting-120hz-running-on-brave-or-kiwi-with-oos-12.4392753/

This script will use the wireless adb server running on your oneplus 7T or younger (pro or not) device with stock android 11+ to set it to the maximum even for apps like youtube or the brave browser.

### Prerequisites
The script expects that you have the android platform tools installed under ~/Documents/platform tools. Only the ./adb command is used.

The script takes the ip:port of the wireless adb bridge server running on your android device as a single argument and sets the corresponding settings variables.

- You need developer tools activated on your device
- You need to enable USB Debugging and set the thumbprint of your mac to be allowed.
- You finally need to enable wireless debugging and pass the ip:port of the server running on your android device as a single argument to the script.

### Script Usage
```
$ sh max-global-refreshrate.sh ip:port
```

If everything works you should see the following

```
connected to ip:port
disconnected ip:port

```

### Purpose
The purpose of the script is to have a handy tool on demand. Unfortunately the process needs to be repeated every time after a reboot.