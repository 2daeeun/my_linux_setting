### 터미네이터 설정 
```swift
mkdir ~/.config/terminator && wget https://raw.githubusercontent.com/2daeeun/my_linux_setting/master/config && mv config ~/.config/terminator
```
민트 시나몬에도 파일은 있지만 openbox에서 주로 수정함.  
openbox 폴더가 메인임.
***
### 부팅 시 자동실행 명령어 등록

* 빨콩 속도 조절
* 트랙패드 속도 조절
* 블루투스 비활성화
* fcitx한글 활성화
* tlp 실행
* numlock 활성화
* 바탕화면(nitrogen) 설정
* ~~화면 잠금(GNOME Screensaver)~~
* conky

```swift
sudo wget -P /etc/profile.d/ https://raw.githubusercontent.com/2daeeun/my_linux_setting/master/startup.sh
```

### NeoVim 설정
```swift
mkdir ~/.config/nvim && wget -P ~/.config/nvim/ https://raw.githubusercontent.com/2daeeun/my_linux_setting/master/init.vim
```
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
