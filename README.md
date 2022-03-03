# My Linux Mint Setting
This is my personal Linux Mint setting. 
***
### 단축키 설정
(설정 > 키보드 > 단축키)를 들어간다.
* 루킹글래스 단축키 바꾸기 (분류 > 일반 > 문제 해결하기 > 루킹글래스 표시)에서 (Super+L > Alt+Super+L)로 설정한다.  
* 창 최소화 단축키는 (분류 > 창 > 창 최소화)에서 (Super+M)로 설정한다.
* 창 최대화 단축키는 (분류 > 창 > 창 최대화 토글)에서 (Ctrl+Alt+J)로 추가 설정한다.
* 창 닫기 단축키는 (Categories>Windows>Close windows)에서 (Super+X)로 추가 설정한다.
* 웹 브라우저 단축키는 (Categories>Launchers>Launch web browser)에서 (Super+E)로 설정한다.
* 홈 폴더 단축키는 (Categories>Launchers>Home folder)에서 (Super + F)로 설정한다,
* 터미네이터 단축키는 우선 (설정 >기본 애플리케이션)으로 가서 기본 애플리케이션 터미널을 터미네이터로 선택한다.
그 후 (설정 > 키보드 > 단축키)에서 (분류 > 런처 > 터미널 실행)에서 (Ctrl+Alt+T > Super+T)로 설정한다.  
* 다운로드 폴더 열기 단축키는 (Categories>Launchers>Custom Shortcuts)에서 (Add custom shortcut)를 누른 뒤 Name 은 "다운로드 폴더 열기"로 Command는 "nemo Downloads"로 하고 단축키는 (Super+L)로 설정한다.
* 사진 폴더 열기 단축키는 (Categories>Launchers>System>Hardware)에서 (디스플레이장치 다시 감지)의 단축키 설정값을 (Shift+Ctrl+Alt+P)로 재설정 한 뒤에, (Categories>Launchers>Custom Shortcuts)에서 (Add custom shortcut)를 누른 뒤 Name 은 "사진 폴더 열기"로 Command는 "nemo Pictures"로 하고 단축키는 (Super+P)로 설정한다.
***
### 애플릿에서 설정 해야 할 것
* CPU Temperature Indicator
* System Monitor
* Weather (설정값은 Weather.json 다운 받아서 가져오기)
***
### 토토로 바탕화면 설정
```swift
sudo wget -P ../../ https://github.com/largesilver/my_linux_mint_setting/raw/master/totoro.png
```
[사진출처](https://wallpaperaccess.com/download/totoro-pc-1998829)
(메뉴 > 배경화면)에서 배경화면 설정하기
***
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
```swift
sudo apt-get --purge remove celluloid hypnotix pix* drawing onboard* rhythmbox* hexchat* hypnotix* thunderbird* firefox*
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
***
### 학교 수업을 위해 ~~어쩔 수 없이~~ 설치해야 할 프로그램
* Band
```swift
wget https://ssl.pstatic.net/cmstatic/desktop/v1.10.9/BAND-1.10.9-amd64.deb && sudo dpkg -i BAND-1.10.9-amd64.deb
```
* Band 설치하면서 libappindicator3-1 의존성 문제 생길 경우 
```swift
wget http://ftp.us.debian.org/debian/pool/main/libi/libindicator/libindicator3-7_0.5.0-4_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/liba/libappindicator/libappindicator3-1_0.4.92-7_amd64.deb
sudo apt install ./libindicator3-7_0.5.0-4_amd64.deb
sudo apt install ./libappindicator3-1_0.4.92-7_amd64.deb
```
* OBS Studio & FFmpeg
```swift
sudo apt-get install ffmpeg && sudo apt-get install obs-studio
```
* Zoom 
```swift
wget https://zoom.us/client/latest/zoom_amd64.deb && sudo dpkg -i zoom_amd64.deb
```
***
### Nerd Fonts 설치
```swift
sudo wget -P /usr/share/fonts https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf && sudo fc-cache -f -v
```
***
### 터미네이터 설정 
```swift
mkdir ~/.config/terminator && wget https://raw.githubusercontent.com/2daeeun/my_linux_mint_setting/master/config && mv config ~/.config/terminator
```
***
### 부팅 시 자동실행 명령어 등록
* 부팅시 빨콩 속도조절
* 부팅시 블루투스 비활성화
* 부팅시 fcitx를 이용해 한글 활성화
* 부팅시 tlp 자동 실행
```swift
sudo wget -P /etc/profile.d/ https://raw.githubusercontent.com/2daeeun/my_linux_mint_setting/master/startup.sh
```
***
### 아톰 설치
```swift
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
```
```swift
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
```
```swift
sudo apt-get update && sudo apt-get install atom
```
아톰 플러그인은 (Edit > preference > install)에 가서  
atom-beautify, auto-indent, atom-alignment, autoclose-html, color-picker, highlight-selected, vim-mode-plus, minimap, emmet, Pigments, Linter 들을 설치하기
***
### 크롬 설치
```swift
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt install python3-apt && sudo apt install ./google-chrome-stable_current_amd64.deb && sudo rm -rf /etc/apt/sources.list.d/google.list
```
예전의 내가 크롬 설치했던 방식 필요하면 history나 블로그 뒤져보기
***
### Slimbook Battery 설치
Intel CPU
```swift
sudo add-apt-repository ppa:slimbook/slimbook
```
```swift
sudo apt-get update && sudo apt install slimbookbattery
```
AMD CPU
```swift
sudo add-apt-repository ppa:slimbook/slimbook
```
```swift
sudo apt-get update && sudo apt-get install slimbookamdcontroller
```
***
### Node.Js 설치
**Using Ubuntu**
```swift
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get update && sudo apt-get install nodejs -y && sudo apt-get install build-essential -y && sudo apt-get install gcc g++ make -y
```
**Using Debian, as root**
```swift
curl -fsSL https://deb.nodesource.com/setup_current.x | bash -
sudo apt-get update && sudo apt-get install nodejs -y && sudo apt-get install build-essential -y && sudo apt-get install gcc g++ make -y
```


PPA를 통해서 Node.JS를 설치하면 NodeJS 뿐만 아니라 npm도 같이 설치되는데, npm install시 에러가 나는 것을 방지하기 위해 build-essential을 설치해준다.
***
### yarn 설치
```swift
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
```
```swift
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
```
```swift
sudo apt-get update && sudo apt-get install yarn -y
```
***
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
***
### NeoVim 설정
```swift
mkdir ~/.config/nvim && wget -P ~/.config/nvim/ https://raw.githubusercontent.com/2daeeun/my_linux_mint_setting/master/init.vim
```
플러그인 설치 :**:source %** 하고 **:PlugInstall** 입력  
플러그인 제거 : 구성하는 줄 지우고 **:PlugClean** 입력  
플러그인 업데이트 : **:PlugUpdate** 하고 **:PlugUpgrade** 입력  
(nvim이 아닌 일반 vim 사용할 때는 /etc/vim 에 가서 vimrc 파일을 수정한다.)  
***


### CoC 설정하기  

CoC(Conquer of Completion)는 언어를 자동완성(auto completion)해주는 intellisense 엔진이다. LSP(Language Server Protocol)를 완전히 지원한다.

시작하기에 앞서
CocInstall coc-json coc-tsserver

**C/C++/Objective-C 자동완성**  

vi에서  

```swift
CocInstall coc-clangd
```

```swift
CocCommand clangd.install
```
잘 설치되었는지 확인은 :CocCommand clangd.update 라고 입력하여 확인하기.    
만약 안된다면 수동으로 sudo apt-get install clangd-12 로 설치하고, sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100 로 path 지정하기.


**Python 자동완성**
```swift
sudo apt install python3-dev python3-pip python3-venv
```
```swift
CocInstall coc-jedi
```
**Java 자동완성**
```swift
sudo apt-get install openjdk-17-jdk
```
```swift
CocInstall coc-jedi
```
**기타 Coc 설치하기**
```swift
CocInstall coc-python coc-pydocstring coc-sh coc-vimlsp coc-json coc-tsserver
```

CoC와 LSP 전반적으로 참조 사이트  
[Chris@Machine ~Neovim Intellisense with coc](https://www.chrisatmachine.com/Neovim/04-vim-coc/)  
[coc.nvim](https://github.com/neoclide/coc.nvim)  
**[coc-extnsions](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions)** <-원하는 LSP서버는 주로 여기를 참조하자  
[기계인간 ~coc.nvim 설치](https://johngrib.github.io/wiki/vim-auto-completion/)  
https://tyanjournal.com/tips/neovim-c-ide/
***
### zsh 및 oh-my-zsh 설치
```swift
sudo apt-get install zsh
```
```swift
chsh -s /usr/bin/zsh
```
```swift
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
***
### oh-my-zsh 폰트 깨짐 방지
```swift
sudo apt-get install fonts-powerline && git clone https://github.com/powerline/fonts.git && cd fonts && ./install.sh && sudo rm -r ~/fonts/ && cd ~
```
***
### zshrc 파일 설정
* oh-my-zsh 테마 변경
* zsh 플러그인 설치
* alias 설정
* unzip 한글 깨짐 방지
```swift
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && sudo git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions && mv .zshrc .zshrc.bak && wget -O .zshrc https://raw.githubusercontent.com/2daeeun/my_linux_mint_setting/master/zshrc
```
zshrc 파일을 어떻게 설정했는지에 대한 세부적인 내용은 [zshrcConfig.md](https://github.com/2daeeun/my_linux_mint_setting/blob/master/zshrcConfig.md) 참조
***
### 그놈 터미널 삭제
```swift
sudo apt-get --purge remove gnome-terminal gnome-terminal-data
```
***
### 최종 마무리
```swift
sudo apt-get update && sudo apt-get upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
```
