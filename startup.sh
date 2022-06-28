#!/bin/bash
#sudo wget -P /etc/profile.d/ https://raw.githubusercontent.com/2daeeun/my_linux_mint_setting/master/startup.sh

#Thinkpad_trackpoint_speed(부팅시_빨콩_속도조절)
xinput --set-prop "TPPS/2 Elan TrackPoint" "libinput Accel Speed" -1.0 &
#Disable_bluetooth_on_boot(부팅시_블루투스_비활성화)
rfkill block bluetooth &
#enable_hangul_to_fcitx(부팅시_fcitx를_이용해서_한글_활성화)
fcitx &
#부팅시_tlp_자동_실행
tlp start &
#numlockx_자동_실행
numlockx &
