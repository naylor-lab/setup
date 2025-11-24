sudo apt install proxychains-ng tor -y
#sudo nano /etc/proxychains.conf
#socks4 127.0.0.1 9050
#

sudo proxychains4 apt install wget neovim -y

#Create Lab:
cd ~/
mkdir Lab
mkdir Lab/Internet
cd Lab/Internet

#Init Tor Lab:
sudo proxychains4 wget  "https://www.torproject.org/dist/torbrowser/15.0.2/tor-browser-linux-x86_64-15.0.2.tar.xz"

tar -xf tor-browser-linux-x86_64-15.0.2.tar.xz 

rm -rf tor-browser-linux-x86_64-15.0.2.tar.xz 

sudo service tor start
sudo systemctl status tor





