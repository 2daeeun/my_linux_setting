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
* ~~Libreoffice~~
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
* git
* PPA 지원
* ~~axel~~
* aria2
* stdio.h 해더파일
* 나눔폰트
* 카메라(cheese)
* Virtualbox
* Parcellite(클립보드)(단축키는 Ctrl+Alt+H)
* barrier
```swift
sudo apt-get install vlc terminator kolourpaint numlockx git software-properties-common aria2 libc6-dev fonts-nanum cheese virtualbox parcellite barrier -y
```
***
### 학교 수업을 위해 ~~어쩔 수 없이~~ 설치해야 할 프로그램
* Band (https://band.us/cs/notice/1301),(sudo wget https://ssl.pstatic.net/cmstatic/desktop/v1.10.9/BAND-1.10.9-amd64.deb && dpkg -i BAND-1.10.9-amd64.deb)
* OBS Studio & FFmpeg (https://obsproject.com/ko/download), (sudo apt-get install ffmpeg && sudo apt-get install obs-studio
* Zoom (sudo wget https://zoom.us/client/latest/zoom_amd64.deb && dpkg -i zoom_amd64.deb)
```swift
sudo wget https://ssl.pstatic.net/cmstatic/desktop/v1.10.9/BAND-1.10.9-amd64.deb && dpkg -i BAND-1.10.9-amd64.deb && sudo apt-get install ffmpeg -y && sudo apt-get install obs-studio -y && sudo wget https://zoom.us/client/latest/zoom_amd64.deb && dpkg -i zoom_amd64.deb
```
***
### Nerd Fonts 설치
```swift
sudo wget -P /usr/share/fonts https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf
```
```swift
sudo fc-cache -f -v
```
***
### 터미네이터 설정 
```swift
sudo mkdir ~/.config/terminator && wget https://raw.githubusercontent.com/2daeeun/my_linux_mint_setting/master/config && sudo mv config ~/.config/terminator && sudo mv ~/.config/terminator/config ~/.config/terminator/.config
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
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
```
```swift
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
```
```swift
sudo apt-get update && sudo apt install python3-apt && sudo apt-get install google-chrome-stable
```
```swift
sudo rm -rf /etc/apt/sources.list.d/google.list
```
***
### TLP Laptop battery saver 설치
```swift
sudo apt-get install -y tlp tlp-rdw && sudo tlp start
```
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
```swift
sudo apt-get install curl
```
```swift
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
```
```swift
sudo apt-get update && sudo apt-get install -y nodejs && sudo apt-get install build-essential && sudo apt-get install gcc g++ make
```
PPA를 통해서 Node.JS를 설치하면 NodeJS 뿐만 아니라 npm도 같이 설치되는데, npm install시 에러가 나는 것을 방지하기 위해 build-essential을 설치해준다.
***
### yarn 설치
```swift
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarnkey.gpg >/dev/null
```
```swift
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
```
```swift
sudo apt-get install yarn
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
**:PlugInstall** 하고 **:UpdateRemotePlugins** 를 입력한다.  
(nvim이 아닌 일반 vim 사용할 때는 /etc/vim 에 가서 vimrc 파일을 수정한다.)  
***
### LSP 설정하기
**[clangd](https://clangd.llvm.org/installation.html "clangd") 설치하기(c/c++ 자동완성)**
```swift
CocInstall coc-clangd
```
```swift
sudo apt-get install clangd-12
```
```swift
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100
```
nvim에서 **:CocCommand clangd.install** 을 입력하여 설치를 진행하고 **:CocCommand clangd.update** 명령어를 입력해서 실제 실행되는지 확인해 보기.  만약 안된다면 수동으로 sudo apt-get install clangd-12 로 설치하고 sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100 로 path 지정하기.
  
**[coc-jedi](https://github.com/pappasam/coc-jedi "coc-jedi") 설정(파이썬 자동완성)**
```swift
cp ~/my_linux_mint_setting/coc-settings.json ~/.config/nvim/
```
**LSP 등록하기**
```swift
CocInstall coc-clangd coc-python coc-jedi coc-sh coc-vimlsp
```
nvim에서 **:CocInstall <LSP 서버명>** 을 이용해서 위의 명렁어를 입력한다.

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
```swift
sudo apt install fonts-powerline
```
***
### oh-my-zsh 폰트 깨짐 방지
```swift
sudo apt-get install fonts-powerline
```
```swift
이거 위의 'zsh 및 oh-my-zsh 설치'의 마지막 줄하고 중복됨 폰트 깨지나 안꺠지나 확인해보기. 안깨지면 이 항목 삭제.
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
sudo rm -r ~/fonts/
```
***
### zshrc 파일 설정
* oh-my-zsh 테마 변경
* zsh 플러그인 설치
* alias 설정
* unzip 한글 깨짐 방지
```swift
wget https://raw.githubusercontent.com/2daeeun/my_linux_mint_setting/master/zshrc && mv zshrc .zshrc && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
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
