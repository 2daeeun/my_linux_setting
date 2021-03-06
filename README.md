# My Linux Mint Setting
This is my personal Linux Mint setting. 
***
### 리눅스 민트 시나몬에서 하는 작업
* 설치&삭제 할 프로그램([mint_RI.md](https://github.com/2daeeun/my_linux_setting/blob/master/linux_mint_cinnamon/mint_RI.md))
* 시나몬&애플릿&바탕화면 설정([mint_CAW.md](https://github.com/2daeeun/my_linux_setting/blob/master/linux_mint_cinnamon/mint_CAW.md))
* .cinnamon 디렉터리를 home 디렉터리에 옮기기

### Openbox에서 하는 작업 ~~(때려침)~~
* 설치&삭제 할 프로그램([openbox_RI.md](https://github.com/2daeeun/my_linux_setting/blob/master/openbox/openbox_RI.md))
* 설정해야 할 것([openbox_CAW.md](https://github.com/2daeeun/my_linux_setting/blob/master/openbox/openbox_CAW.md))

### Xfce (Kali linux)
* 설치&삭제 할 프로그램([xfce_kali_linux_RI.md](https://github.com/2daeeun/my_linux_setting/blob/master/xfce_kali_linux/xfce_kali_linux_RI.md))
* 설정해야 할 것([xfce_kali_linux_CAW.md](https://github.com/2daeeun/my_linux_setting/blob/master/xfce_kali_linux/xfce_kali_linux_CAW.md))

***
### 학교 수업을 위해 ~~어쩔 수 없이~~ 설치해야 할 프로그램
* Band
```swift
wget https://ssl.pstatic.net/cmstatic/desktop/v1.10.10/BAND-1.10.10-amd64.deb && sudo dpkg -i BAND-1.10.10-amd64.deb
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
sudo apt install v4l2loopback-dkms && sudo apt-get install ffmpeg && sudo apt-get install obs-studio -y
```
* Zoom 
```swift
wget https://zoom.us/client/latest/zoom_amd64.deb && sudo dpkg -i zoom_amd64.deb
```
***
### 크롬 설치
```swift
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt install python3-apt && sudo apt install ./google-chrome-stable_current_amd64.deb && sudo rm -rf google-chrome-stable_current_amd64 && sudo rm -rf /etc/apt/sources.list.d/google.list
```
예전의 내가 크롬 설치했던 방식 필요하면 history나 블로그 뒤져보기
***
### Nerd Fonts 설치
```swift
sudo wget -P /usr/share/fonts https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf && sudo fc-cache -f -v
```
칼리 리눅스에서는
```swift
sudo wget -P /usr/share/fonts/truetype https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf && sudo fc-cache -f -v
```
***
### ZIP & UNZIP 한글 깨짐
```swift
echo -e '\nexport UNZIP=\042-O cp949\042\nexport ZIPINFO=\042-O cp949\042' >> /etc/profile
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
atom-beautify, auto-indent, atom-alignment, autoclose-html, color-picker, highlight-selected, vim-mode-plus, minimap, emmet, Pigments, Linter, atom-html-preview  들을 설치하기
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
```
```swift
sudo apt-get update && sudo apt-get install nodejs -y && sudo apt-get install build-essential -y && sudo apt-get install gcc g++ make -y
```
**Using Debian, as root**
```swift
sudo apt-get update && sudo apt-get install nodejs -y && sudo apt-get install build-essential -y && sudo apt-get install gcc g++ make -y
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
sudo apt-get update && sudo apt-get install yarn -y
```
***


### CoC 설정하기  

CoC(Conquer of Completion)는 언어를 자동완성(auto completion)해주는 intellisense 엔진이다. LSP(Language Server Protocol)를 완전히 지원한다.

시작하기에 앞서
CocInstall coc-json coc-tsserver

**CoC Yarn 활성화**
```swift
cd ~/.local/share/nvim/plugged/coc.nvim && yarn install
```
**C/C++/Objective-C 자동완성**  

vi에서  

```swift
sudo apt-get -y install ccls
```
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
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
```
```swift
echo $JAVA_HOME
```
```swift
export PATH=$PATH:$JAVA_HOME/bin
```
```swift
echo $PATH
```
```swift
CocInstall coc-java
```
**기타 Coc 설치하기**
```swift
CocInstall coc-python coc-pydocstring coc-sh coc-vimlsp coc-json coc-tsserver coc-phpls coc-xml
```

CoC와 LSP 전반적으로 참조 사이트  
**[coc-extnsions](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions)** <-원하는 LSP서버는 주로 여기를 참조하자  
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
#### zsh 관련 설치
* oh-my-zsh 폰트 깨짐 방지
```swift
sudo apt-get install fonts-powerline && git clone https://github.com/powerline/fonts.git && cd fonts && ./install.sh && cd ~ && sudo rm -rf /home/leedaeeun/fonts
```
* Powerlevel10k 설치
```swift
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```
* zsh 구문 강조 플러그인
```swift
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
* zsh 자동 제안 플러그인
```swift
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
***
### 기본 쉘 확인
```swift
echo $SHELL
```
만약 기본 쉘이 bash이면 [이 링크](https://nochoco-lee.tistory.com/350) 참고해서 쉘 바꾸기. 

***
### 기본 에디터 확인
```swift
update-alternatives --config editor
```
***
### 최종 마무리
```swift
sudo apt-get update && sudo apt-get upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
```
