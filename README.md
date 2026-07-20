# GeckoVim
<div align="center" style="background-color: #000000; padding: 20px;">
<img src="img/Gecko_Vim_Logo.svg" alt="GeckoVim Logo" width="200"/>
<br>
<img src="img/GeckoSign.svg" alt="GeckoVim Sign" width="400"/>
</div>


A simple vim distribution for programmers.

---
## Why GeckoVim?

Gecko Vim follows the **KISS** (Keep It Simple, Stupid) principle. It provides a clean configuration with the essential functionality you expect from a modern code editor.

Once Gecko Vim is installed, I invite you to customize it however you like. Add plugins, remove features, remap keys, or adapt it to your workflow. Gecko Vim is designed to be a starting point, not a limitation.

---

## Gecko Vim (Classic Vim)

### Dependencies

#### 1. Vim

It is highly recommended to install **gVim**, which also includes terminal Vim.

**Debian / Ubuntu**

```bash
sudo apt update && sudo apt install vim-gtk3
```

**Arch Linux**

```bash
sudo pacman -S gvim
```

**Fedora**

```bash
sudo dnf install vim-enhanced
```

#### 2. vim-plug

Install the plugin manager:

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

> More info: [https://github.com/junegunn/vim-plug](https://github.com/junegunn/vim-plug)

#### 3. Nerdfont 
Download a nerdfont to get icons for vim-devicons plugin in vim
Go to the link
[https://www.nerdfonts.com/](https://www.nerdfonts.com/)

#### 4. Node.js

Required for **coc.nvim** (IntelliSense, linting, etc.).

Install it from the official site (Recomended): [https://nodejs.org/es/download](https://nodejs.org/es/download)

Or using your package manager:

```bash
# Debian / Ubuntu
sudo apt install nodejs npm
```

```bash
# Arch Linux
sudo pacman -S nodejs npm
```

```bash
# Fedora
sudo dnf install nodejs npm
```

#### 4. Need Go and make? (optional)

Needed for one plugin "vim-hexokinase" (this provides highlight for css colors). If you don't want this plugin, you can skip this step.

> **Note:** If you don't install Go, make sure to remove "Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }" from the file plugins.vim after installation.

**Arch Linux**

```bash
sudo pacman -S go make
```

**Debian / Ubuntu**

```bash
sudo apt install golang-go make
```

**Fedora**

```bash
sudo dnf install golang make
```

### Installation

#### 1. Clone and install

> **Warning:** This will overwrite your existing `~/.vimrc`. Backup it first if needed.

```bash
# HTTP
git clone https://github.com/qwerty3341/geckovim.git \
&& mv geckovim/VimEdition/{config,maps,plugin-config,plugins}.vim ~/.vim/ \
&& rm -rf geckovim \
&& ln -sf ~/.vim/config.vim ~/.vimrc
```

```bash
# SSH
git clone git@github.com:Qwerty3341/GeckoVim.git \
&& mv GeckoVim/VimEdition/{config,maps,plugin-config,plugins}.vim ~/.vim/ \
&& rm -rf GeckoVim \
&& ln -sf ~/.vim/config.vim ~/.vimrc
```

#### 2. Install plugins

Open Vim and run:

```
:PlugInstall
```

---

## Slim Gecko

A lightweight version of GeckoVim focus on secondary editor or server administration.

### Installation

1. Download vim (The version you want)

**Debian / Ubuntu**
```bash
sudo apt update && sudo apt install vim-gtk3
```

**Arch Linux**
```bash
sudo pacman -S gvim
```

**Fedora**
```bash
sudo dnf install vim-enhanced
```

2. Copy the configuration

> **Warning:** This will overwrite your existing `~/.vimrc`. Backup it first if needed.

```bash
### HTTP
git clone https://github.com/qwerty3341/geckovim.git \
    && cp geckovim/SlimGecko/config.vim ~/.vimrc \
    && rm -rf geckovim
```

```bash
### SSH
git clone git@github.com:Qwerty3341/GeckoVim.git \
    && cp GeckoVim/SlimGecko/config.vim ~/.vimrc \
    && rm -rf GeckoVim
```

---


## Neovim Edition

> Coming soon.

A Neovim-native version of GeckoVim.
