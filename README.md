# My Dotfiles

This configurations and instructions are made specifically for my quickly setting up my preferred environment on machines running Fedora and RHEL-based distros. 

I use this on my home-server, workstation, and laptop.

## Instructions - Step by step

The following instructions will help you set-up your environment from installing the required packages to correctly applying their saved configuration.

### Step 1 - Clone the repo

Run the command to clone the repo and download the files to your machine

```bash
git clone https://github.com/claudiogferraz/.dotfiles ~/.dotfiles
```


### Step 2 - Install packages and dependencies

We need to ensure that everything is installed before linking the configuration files.

The following packages will be installed at this step:

- Git - Distributed version control system
- Curl -  Tool for transferring data using various network protocols
- ZSH - Extensible shell with lots of improvements over bash
- Oh My Zsh - Framework for managing your ZSH, with lots of pre-bundled plugins, themes, etc.
- Mise - One tool for managing all your runtime versions
- Podman & Compose - Daemonless container management tool

First we Install all the software pre-packaged by your distro:

```bash
# Install Git, Curl, ZSH, Podman and Compose
sudo dnf install git curl zsh podman podman-compose 
```

Then we manually install packages that aren't pre-packaged by the distro, running their respective installation commands:

```bash
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

```bash
# Install mise
curl https://mise.run | sh
```

## Step 3 - Linking the files

```bash
# Link Git config
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

# Link ZSH config
ln -s ~/.dotfiles/.zshrc ~/.zshrc
```

