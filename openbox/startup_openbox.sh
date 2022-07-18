#!/bin/bash

#--------------------
#빨콩 속도 조절
xinput --set-prop "TPPS/2 Elan TrackPoint" "libinput Accel Speed" -1.0 &
#--------------------
#트랙패드 속도 조절
xinput --set-prop "SynPS/2 Synaptics TouchPad" "libinput Accel Speed" 1.0 &
#--------------------
#블루투스 비활성화
rfkill block bluetooth &
#--------------------
#fcitx한글 활성화
fcitx &
#--------------------
#tlp 실행
tlp start &
#--------------------
#numlock 활성화
numlockx &
#--------------------
#바탕화면 설정
nitrogen --restore
#--------------------
#화면 잠금
#GNOME Screensaver
#--------------------
#conky
conky -c ~/.conky/conkyrc &
#--------------------
