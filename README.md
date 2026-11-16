# My Dotfiles

My configs and instructions for quickly setting up my preferred work environment on a new machine.
<br/>I use this on my home-server, workstation, and laptop, all running Arch-based distros.

## Instructions - Step by step

The following instructions will help you set-up your environment from installing the required packages to correctly applying their saved configuration.

### Step 1 - Install dependencies

Install **Git** and **Curl**, which are required to run most of the other commands you'll see on this guide. To do so, run

#### On ArchLinux:

```bash
sudo pacman -S git curl
```

#### On Fedora/RHEL:

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

- Mise - One tool for managing all your runtime versions
- Vim - Without any plugins or custom config, just to quickly edit files when needed

First we Install all the software pre-packaged by your distro:

#### On ArchLinux:

```bash
sudo pacman -S brush gvim mise
```

#### On Fedora:

```bash
sudo dnf install vim;
sudo dnf copr enable jdxcode/mise;
sudo dnf install mise
```

### Step 4 - Create symbolic links

```bash
# Link Git config
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig;

# Link Bash config
ln -sf ~/.dotfiles/.bashrc ~/.bashrc;

# Create .config dir if it doesn't exist
mkdir ~/.config;

# Link Zed config
ln -sf ~/.dotfiles/.config/zed ~/.config/zed
```

---

This simple setup README.md was created by me, for my own use and to help others that might want to achieve a similar minimalist workflow.

If it helped you, consider [buying me a coffee](https://buymeacoffee.com/claudiogferraz) 😁☕
