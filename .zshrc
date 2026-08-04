export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gentoo"

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode auto        # update automatically without asking
zstyle ':omz:update' frequency 7      # check for updates every 7 days

DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
	zsh-autosuggestions
	zsh-syntax-highlighting
	git
	mise
)

source $ZSH/oh-my-zsh.sh

# export LANG=en_US.UTF-8
export LANG=pt_BR.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias dots="cd ~/.dotfiles"
alias config="cd ~/.config"

# Enable vi mode on zsh (it sucks so I disabled it again)
# bindkey -v

# pnpm stuff
export PNPM_HOME="/home/claudio/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# add .local/bin to path
export PATH="$HOME/.local/bin:$PATH"
# add /usr/local/bin to path
export PATH="$PATH:/usr/local/bin"

eval "$(/home/claudio/.local/bin/mise activate zsh)" # added by https://mise.run/zsh
