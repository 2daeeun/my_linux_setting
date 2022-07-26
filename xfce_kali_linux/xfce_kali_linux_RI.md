### 설치 해야 할 패키지
* sudo
* Vlc
* Terminator
* Kolourpaint
* Numlock
* htop
* tlp & tlp-rdw
* git
* PPA 지원(software-properties-common)
* curl
* libreoffice
* fuse & libfuse2
* python3-pip
* ack-grep
* neovim
* aria2
* stdio.h 해더파일
* 한글(fcitx, 나눔폰트)
* 카메라(cheese)
* Virtualbox (이 프로그램만 [이곳](https://www.virtualbox.org/wiki/Linux_Downloads)에서 직접 다운 받고 설치하기)
* Parcellite(클립보드)(단축키는 Ctrl+Alt+H)
* barrier
* brightnessctl
* rofi (rofi -modi drun,run -show drun -font "DejaVu Sans 18" -show-icons)
* firmware-amd-graphics libgl1-mesa-dri (nvim /etc/apt/sources.list에서 non-free확인)

```swift
sudo apt-get update && sudo apt-get install sudo vlc terminator kolourpaint numlockx htop tlp tlp-rdw git software-properties-common curl libreoffice fuse libfuse2 git python3-pip ack-grep neovim aria2 libc6-dev fcitx-lib* fcitx-hangul fonts-nanum cheese parcellite barrier rofi firmware-amd-graphics libgl1-mesa-dri -y && sudo apt-get full-upgrade
```

### 삭제 해야 할 패키지
* nano
* vim
* vim-common
* vim-nox
* vim-runtime
* vim-tiny
* qterminal
* parole
* firefox-esr

```swift
sudo apt-get update && sudo apt-get purge nano vim vim-common vim-nox vim-runtime vim-tiny qterminal parole firefox

```


<details>
<summary>neevim 설치 문제있으면 보기</summary>
NeoVim 설치  
  
sudo apt-get install software-properties-common fuse libfuse2 git python3-pip ack-grep -y && sudo apt-get update && sudo apt-get install neovim  

pip3 install --user neovim  

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim  

터미널에서 'v' 만으로 nvim을 실행하고 싶으면 ~/.zshrc 에서 마지막 줄에 alias v='nvim' 를 입력하면 된다.
</details>

