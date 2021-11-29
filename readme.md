## Set up the nvim configuration
1. Download Neovim
```
wget wget https://github.com/neovim/neovim/releases/download/v0.5.1/nvim-linux64.tar.gz
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
git clone git@github.com:fraj123/config.git
```
5. Symbolic link
```
ln -s ~/config/nvim/ ~/.config/nvim
```
6. Install Plugins
```
:PluginInstall
```
