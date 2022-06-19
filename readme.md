## Set up the nvim configuration
1. Download Neovim
```
wget https://github.com/neovim/neovim/releases/download/v0.5.1/nvim-linux64.tar.gz
```
2. Install Neovim
```
tar -xzvf nvim-linux64.tar.gz
mv nvim-linux64 nvim
sudo mv nvim /opt
sudo ln -s /opt/nvim/bin/nvim /usr/bin/nvim
```
3. Install Plugin Manager
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir -p ~/.config
```
4. Clone config directory
```
cd ~
git clone https://github.com/fraj123/config.git
```
5. Symbolic link
```
ln -s ~/config/nvim/ ~/.config/nvim
```
6. Install Plugins
```
:PluginInstall
```
7. Resolve error
7.1. Node Error
```
[coc.nvim] node is not executable
```
Install Nodejs
```
wget https://nodejs.org/dist/v17.6.0/node-v17.6.0-linux-x64.tar.xz
tar -xzvf node-v17.6.0-linux-x64.tar.xz
mv node-v17.6.0-linux-x64 node
sudo mv node /opt/
echo "export PATH=$PATH:/opt/node/bin" >> ~/.bashrc
source ~/.bashrc
```
7.2. Python module error
```
No "python3" provider found. Run :checkhealth provider
```
Install module python
```
sudo apt install python3-pip
python3 -m pip install --user --upgrade pynvim
```
