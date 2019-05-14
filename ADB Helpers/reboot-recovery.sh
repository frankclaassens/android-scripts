#!/bin/bash

adb reboot bootloader; 
sleep 7;

fastboot flash recovery /Users/fanix/Desktop/M8PRO/twrp/TWRP_equuleus_1102.img 
sleep 3;

fastboot boot /Users/fanix/Desktop/M8PRO/twrp/TWRP_equuleus_1102.img;

#sleep 20;

#adb push /Users/fanix/Desktop/M8PRO/lineage/Latest/lineage-16.0-20190425-UNOFFICIAL-equuleus.zip /sdcard/
# Format & reset


# Upload lineage
#./adb push ../lineage/Latest/lineage-16.0-20190425-UNOFFICIAL-equuleus.zip /sdcard/