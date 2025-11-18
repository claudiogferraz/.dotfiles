<div align="center">
<h1>My Dotfiles</h1>
<p>
  My configs and instructions for quickly setting up my preferred work environment on a new machine.
  <br/>I use this on my home-server, workstation, and laptop, all running RHEL-based distros.
</p>
<img src="https://raw.githubusercontent.com/claudiogferraz/.dotfiles/refs/heads/main/screenshots/nvim.webp" />
</div>

## Instructions - Step by step

The following instructions will help you set-up your environment from installing the required packages to correctly applying their saved configuration.

### Step 1 - Install dependencies

Install **Git** and **Curl**, which are required to run most of the other commands you'll see on this guide. To do so, run

```bash
sudo dnf install git curl
```

### Step 2 - Clone the repo

Run the command to clone the repo and download the files to your machine

```bash
git clone https://github.com/claudiogferraz/.dotfiles ~/.dotfiles
```

### Step 3 - Install packages

We need to ensure that everything is installed before linking the configuration files.

The following packages will be installed at this step:

- ZSH - Extensible shell with lots of improvements over bash
- Oh My Zsh - Framework for managing your ZSH, with lots of pre-bundled plugins, themes, etc.
- Mise - One tool for managing all your runtime versions
- Podman & Compose - Daemonless container management tool

First we Install all the software pre-packaged by your distro:

```bash
# Install ZSH, Neovim, Podman and Compose
sudo dnf install zsh nvim podman podman-compose
```

Then we manually install packages that aren't pre-packaged by the distro, running their respective installation commands:

```bash
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Download ZSH Autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Download ZSH Syntax Highlighting plugn
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

```bash
# Run Mise installation script
sudo dnf copr enable jdxcode/mise
sudo dnf install -y mise
```

### Step 4 - Create symbolic links

```bash
# Link Git config
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig

# Link ZSH config
ln -sf ~/.dotfiles/.zshrc ~/.zshrc

# Link Neovim config
ln -sf ~/.dotfiles/.config/nvim ~/.config/nvim

# Link Hyprland config
ln -sf ~/.dotfiles/.config/hypr/hyprland.conf ~/.config/hypr
```
