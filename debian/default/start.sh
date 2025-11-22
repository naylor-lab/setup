sudo apt install proxychains-ng -y
sudo apt install torsocks -y
sudo apt install tor -y

sudo service tor start
sudo systemctl status tor

sudo proxychains4 apt install wget -y

cd ~/
mkdir Lab
mkdir Lab/Internet

sudo proxychains4 wget "https://www.torproject.org/dist/torbrowser/15.0.2/tor-browser-linux-x86_64-15.0.2.tar.xz"
sudo tar -xzvf tor-browser-linux-x86_64-15.0.2.tar.xz 
cd tor-browser-linux-x86_64-15.0.2

sudo proxychains4 apt install neovim -y 





