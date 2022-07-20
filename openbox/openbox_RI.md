### 설치 해야 할 프로그램
* Vlc
* Terminator
* Kolourpaint
* Numlock
* tlp & tlp-rdw
* git
* PPA 지원(software-properties-common)
* curl
* fuse & libfuse2
* python3-pip
* ack-grep
* neovim
* aria2
* stdio.h 해더파일
* 나눔폰트
* 카메라(cheese)
* Virtualbox (이 프로그램만 [이곳](https://www.virtualbox.org/wiki/Linux_Downloads)에서 직접 다운 받고 설치하기)
* Parcellite(클립보드)(단축키는 Ctrl+Alt+H)
* barrier
* openbox
* obconf
* rofi
* nitrogen
* xauth
* xorg
* xserver-xorg-core
* xinit

```swift
sudo apt-get install vlc terminator kolourpaint numlockx tlp tlp-rdw git software-properties-common curl fuse libfuse2 git python3-pip ack-grep neovim aria2 libc6-dev fonts-nanum cheese parcellite barrier openbox obconf menu rofi nitrogen xauth xorg xserver-xorg-core xinit lightdm firmware-amd-graphics libgl1-mesa-dri -y
```
.xinitrc
exec openbox-session



<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

### NeoVim 설치
```swift
sudo apt-get install software-properties-common fuse libfuse2 git python3-pip ack-grep -y && sudo apt-get update && sudo apt-get install neovim
```
```swift
pip3 install --user neovim
```
```swift
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
터미널에서 'v' 만으로 nvim을 실행하고 싶으면 ~/.zshrc 에서 마지막 줄에 alias v='nvim' 를 입력하면 된다.
