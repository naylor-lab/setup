sudo apt install proxychains-ng tor -y
#sudo nano /etc/proxychains.conf
#socks4 127.0.0.1 9050
#


sudo service tor start
sudo systemctl status tor

sudo proxychains4 apt install wget -y

cd ~/
mkdir Lab
mkdir Lab/Internet
cd Lab/Internet

sudo proxychains4 wget "https://www.torproject.org/dist/torbrowser/15.0.2/tor-browser-linux-x86_64-15.0.2.tar.xz"
sudo tar -xzvf tor-browser-linux-x86_64-15.0.2.tar.xz 
rm -rf tor-browser-linux-x86_64-15.0.2.tar.xz 

sudo proxychains4 apt install neovim -y 





