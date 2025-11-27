pkg update
pkg install x11-repo
pkg install termux-x11-nightly
pkg install pulseaudio
pkg install wget

pkg install xfce4
pkg install tur-repo
pkg install firefox
pkg install neovim 


#Desktop Environment:
cd ~

wget https://raw.githubusercontent.com/LinuxDroidMaster/Termux-Desktops/main/scripts/termux_native/startxfce4_termux.sh

bash ~/startxfce4_termux.sh
