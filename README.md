# My Linux Mint Setting
This is my personal Linux Mint setting.  

### *Install from Software Manager
* Terminator
* VLC
* Kolourpaint

### Create shortcuts
```swift
First go to (Setting>Keyboard) then...

* "Maximize Windows" setting path is (Categories>Windows>Maximize windows). And setting (Super+Up)
* "Close Windows" add setting is (Categories>Windows>Close windows). And setting (Super+X)
* "Web browser" shortcut path is (Categories>Launchers>Launch web browser). And setting (Super+E)
* "Home folder" shortcut path is (Categories>Launchers>Home folder). And setting (Super + F)
* "Terminator" shortcut path is (Categories>Launchers>Custom Shortcuts). After click (Add custom shortcut), set (Name) and (Command) as a "terminator" and setting shortcut (Super+T)
```

### Register auto-run commands at boot time
#### 1. Path & File name
```swift
sudo nvim /etc/profile.d/startup.sh
```

#### 2. Scirtp
```swift
#!/bin/bash

#Thinkpad_trackpoint_speed(빨콩_속도조절)
xinput --set-prop "TPPS/2 Elan TrackPoint" "libinput Accel Speed" -1.0 &
#Disable_bluetooth_on_boot(부팅시_블루투스_비활성화)
rfkill block bluetooth &
#enable_hangul_to_fcitx(fcitx를_이용해서_한글_활성화)
fcitx &
```

### Active "Numlock"key
```swift
sudo apt-get install numlockx
```
Then go (Login Window -> Settings), set (Activate numlock)

### Install "git"
```swift
apt install git
```

### Install "Chrome"
```swift
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable
sudo apt install python3-apt
sudo rm -rf /etc/apt/sources.list.d/google.list
```

### Remove "Firefox"
```swift
sudo apt-get purge firefox
rm -r .mozilla/firefox/
rm -r /etc/firefox/
rm -r /usr/lib/firefox/
rm -r /usr/lib/firefox-addons/
rm -r .mozilla
```

### Support "PPA"
```swift
sudo apt-get -y install software-properties-common
```

### Install "TLP Laptop battery saver"
```swift
sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt-get install -y tlp tlp-rdw
sudo tlp start
```

### Install "Axel"
```swift
sudo apt-get install axel
```
Use example : axel -n x http://~~ .mp4

### Install "stdio.h" header file
```swift
sudo apt-get install libc6-dev
```

### Install "Nanum fonts"
```swift
sudo apt-get install fonts-nanum
```

### Install "Camera"
```swift
sudo apt-get install cheese
```

### Install "VirtualBox"
Download url is "www.virtualbox.org/wiki/Linux_Downloads"

### Install "NeoVim"
```swift
sudo apt-get install software-properties-common
sudo apt-get install fuse libfuse2 git python3-pip ack-grep -y
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
pip3 install --user neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
If you want to run nvim with just 'v' in the terminal,
you input (alias v='nvim') on the last line of (~/.zshrc)

### NeoVim setting & Plugin
First let's set the Colorscheme. Theme is onedark
Neovim is different nomal Vim. Nomal Vim Colorscheme basic folder path is (/usr/share/vim/vim81/colors).
The number of vim81 may differ from version to version.
```swift
git clone https://github.com/joshdick/onedark.vim.git
sudo cp ~/onedark.vim/colors/onedark.vim /usr/share/nvim/runtime/colors/
sudo cp ~/onedark.vim/autoload/onedark.vim /usr/share/nvim/runtime/autoload/
sudo rm -r onedark.vim
```
After setting the theme, let's install miscellaneous settings and plugins.
```swift
mkdir ~/.config/nvim
```
Download (init.vim) file. and put in a (.config/nvim) folder.
Then do "PlugInstall" and "UpdateRemotePlugins".

### Install "Zsh" & "Oh-My-Zsh"
```swift
sudo apt-get install zsh
chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo apt install fonts-powerline
```

### Change "Oh-My-Zsh" theme
Open the .zshrc file, and Change the robbyrussell theme to the agnoster theme.
```swift
ZSH_THEME="robbyrussell"   ==>   ZSH_THEME="agnoster"
```

### Install "Zsh" plugin
Open the .zshrc file and change plugins=(git) on 71 line as follows.
```swift
plugins=(
    git
    zsh-syntax-highlighting 
    zsh-autosuggestions 
)
```
After that, download and configure the plugin as follows.
```swift
# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-autosuggestions
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

### Prevent "Oh-My-Zsh" font breaking
```swift
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
sudo rm -r ~/fonts/
```

### Fin
```swift
sudo apt-get update && sudo apt-get upgrade && sudo apt autoremove -y && sudo apt autoclean -y
```
