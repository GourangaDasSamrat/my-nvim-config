# install c compiler, tree-sitter-cli, prettier, eslint and Live Server

```bash
sudo apt install build-essential
npm install -g tree-sitter-cli
npm install -g prettier
npm install -g eslint
npm install -g live-server
```

# Download the latest ARM64 (aarch64) Neovim release
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-arm64.tar.gz
```
# Remove any previous installation
```bash
sudo rm -rf /opt/nvim-linux-arm64
```
# Extract the archive to /opt
```bash
sudo tar -C /opt -xzf nvim-linux-arm64.tar.gz
```
# Add Neovim to your PATH (add this to ~/.bashrc, ~/.zshrc, etc.)
```bash
echo 'export PATH="$PATH:/opt/nvim-linux-arm64/bin"' >> ~/.zshrc
```
# Reload your shell config
```bash
source ~/.zshrc
```
# Install lazyvim setup and delete .git folder
```bash
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```
