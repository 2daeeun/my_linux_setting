### 삭제 해야 할 프로그램
* Celluloid
* Hypnotix
* Pix
* Drawing
* Onboard
* Rhythmbox
* Hexchat
* Hypnotix
* Thunderbird
* Firefox
* epiphany-browser
```swift
sudo apt-get --purge remove celluloid hypnotix pix* drawing onboard* rhythmbox* hexchat* hypnotix* thunderbird* firefox* epiphany-browser
```
```swift
sudo rm -Rf /etc/firefox/ /usr/lib/firefox* /usr/lib/firefox-addons/ /home/leedaeeun/.mozilla
```
***
### 설치 해야 할 프로그램
* Vlc
* Terminator
* Kolourpaint
* Numlock 활성화(설치 후 Login Window -> Settings에서 Activate numlock 선택하기)
* tlp & tlp-rdw
* git
* PPA 지원
* curl
* aria2
* stdio.h 해더파일
* 나눔폰트
* 카메라(cheese)
* Tor 브라우저
* Virtualbox (의존성 문제 있으면 [이곳](https://www.virtualbox.org/wiki/Linux_Downloads)에서 직접 다운 받기)
* Parcellite(클립보드)(단축키는 Ctrl+Alt+H)
* barrier
```swift
sudo apt-get install vlc terminator kolourpaint numlockx tlp tlp-rdw git software-properties-common curl aria2 libc6-dev fonts-nanum cheese torbrowser-launcher virtualbox parcellite barrier -y
```
