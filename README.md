# Neovim (ARM64) — Quick Install & Setup

A concise, step-by-step guide to install Neovim (ARM64) and a few useful developer tools, then install the LazyVim starter configuration. Commands are provided below — they are preserved exactly as in the original file.

---

## Install C compiler, tree-sitter, prettier, eslint, and Live Server

Run the following commands to install a C compiler toolchain and several global npm tools that are useful for development and editor integrations:

```bash
sudo apt install build-essential
npm install -g tree-sitter-cli
npm install -g prettier
npm install -g eslint
npm install -g live-server
```

---

## Download Neovim (ARM64)

Download the latest ARM64 (aarch64) Neovim release to your current directory:

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-arm64.tar.gz
```

---

## Remove any previous installation

If a previous ARM64 Neovim installation exists in /opt, remove it first:

```bash
sudo rm -rf /opt/nvim-linux-arm64
```

---

## Extract the archive to /opt

Extract the downloaded Neovim archive into /opt (creates /opt/nvim-linux-arm64):

```bash
sudo tar -C /opt -xzf nvim-linux-arm64.tar.gz
```

---

## Add Neovim to your PATH

Append the Neovim bin directory to your shell configuration (example uses ~/.zshrc). You can change the file to ~/.bashrc or another shell config as needed:

```bash
echo 'export PATH="$PATH:/opt/nvim-linux-arm64/bin"' >> ~/.zshrc
```

---

## Reload your shell config

Reload your shell configuration so the updated PATH takes effect in the current session:

```bash
source ~/.zshrc
```

---

## Install my LazyVim congih

Clone the LazyVim configuration into your Neovim config directory :

```bash
git clone https://github.com/GourangaDasSamrat/my-nvim-config.git ~/.config/nvim
```

---
