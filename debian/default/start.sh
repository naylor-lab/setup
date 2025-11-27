sudo apt install proxychains-ng -y
sudo apt install tor -y
sudo apt install neovim -y
sudo apt install wget -y


#Create Lab:
cd ~/
mkdir Lab
mkdir Lab/Internet
cd Lab/Internet


#Create Tor Lab:
sudo wget  "https://www.torproject.org/dist/torbrowser/15.0.2/tor-browser-linux-x86_64-15.0.2.tar.xz"


tar -xf tor-browser-linux-x86_64-15.0.2.tar.xz 
rm -rf tor-browser-linux-x86_64-15.0.2.tar.xz 
sudo chmod +x tor-browser

#Project Environment:
cd ~/
mkdir Lab/Public
cd Lab/Public










