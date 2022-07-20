#!/bin/sh
#sources.list
wget https://raw.githubusercontent.com/2daeeun/my_linux_setting/master/sources.list -O /etc/apt/sources.list &
#sudo permission
echo leedaeeun ALL=(ALL:ALL) ALL >> /etc/sudoers
#크롬 설치     
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && apt install python3-apt && apt install ./google-chrome-stable_current_amd64.deb && rm -rf /etc/apt/sources.list.d/google.list &
#ZIP & UNZIP 한글 깨짐
echo -e '\nexport UNZIP=\042-O cp949\042\nexport ZIPINFO=\042-O cp949\042' >> /etc/profile
#설치 해야 할 프로그램
apt-get install sudo vlc terminator kolourpaint numlockx tlp tlp-rdw git software-properties-common curl fuse libfuse2 git python3-pip ack-grep neovim aria2 libc6-dev fonts-nanum cheese parcellite barrier openbox obconf menu rofi nitrogen xauth xorg xserver-xorg-core xinit lightdm firmware-amd-graphics libgl1-mesa-dri -y &
