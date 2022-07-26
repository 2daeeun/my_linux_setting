### 터미네이터 설정 
* line_down(아래로 한 줄 스크롤)
* line_up(위로 한 줄 스크롤)

이것들 설정 수동으로 하기
***
### 부팅 시 자동실행 명령어 등록

* 빨콩 속도 조절
* 트랙패드 속도 조절
* 블루투스 비활성화
* fcitx한글 활성화
* tlp 실행
* numlock 활성화
***
### NeoVim 설정
플러그인 설치 :**:source %** 하고 **:PlugInstall** 입력  
플러그인 제거 : 구성하는 줄 지우고 **:PlugClean** 입력  
플러그인 업데이트 : **:PlugUpdate** 하고 **:PlugUpgrade** 입력  
(nvim이 아닌 일반 vim 사용할 때는 /etc/vim 에 가서 vimrc 파일을 수정한다.)  
***
### 토토로 바탕화면 설정
```swift
sudo mkdir /wallpaper && sudo wget -P /wallpaper https://raw.githubusercontent.com/2daeeun/my_linux_setting/master/totoro.png
```
[사진출처](https://wallpaperaccess.com/download/totoro-pc-1998829)
(메뉴 > 배경화면)에서 배경화면 설정하기
***
### 설정 파일
* github ▸ local
```swift
cp -r /home/leedaeeun/Documents/my_linux_setting/xfce_kali_linux/leedaeeun /home
```
* local (htop, nvim, terminator) ▸ github
```swift
cp -r /home/leedaeeun/.config/htop /home/leedaeeun/.config/nvim /home/leedaeeun/.config/terminator /home/leedaeeun/Documents/my_linux_setting/xfce_kali_linux/leedaeeun/.config
```
* local (.p10k.zsh, .zshrc) ▸ github
```swift
cp -r /home/leedaeeun/.p10k.zsh /home/leedaeeun/.zshrc /home/leedaeeun/Documents/my_linux_setting/xfce_kali_linux/leedaeeun
```
* local (xfce-perchannel-xml) ▸ github
```swift
cp -r /home/leedaeeun/.config/xfce4/xfconf/xfce-perchannel-xml /home/leedaeeun/Documents/my_linux_setting/xfce_kali_linux/leedaeeun
```
