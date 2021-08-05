#!/bin/bash

#Thinkpad_trackpoint_speed(빨콩_속도조절)
xinput --set-prop "TPPS/2 Elan TrackPoint" "libinput Accel Speed" -1.0 &
#Disable_bluetooth_on_boot(부팅시_블루투스_비활성화)
rfkill block bluetooth &
#enable_hangul_to_fcitx(fcitx를_이용해서_한글_활성화)
fcitx &
