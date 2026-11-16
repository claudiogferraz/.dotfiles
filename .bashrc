# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

alias ff=fastfetch

# Git prompt: * unstaged/untracked, + staged, ↑ ahead, ↓ behind, ? no upstream
__git_prompt() {
    local status line branch='' oid='' ahead='' behind=''
    local unstaged='' staged='' sync=''

    PS1_GIT=''
    status=$(git status --porcelain=v2 --branch --untracked-files=normal 2>/dev/null) || return

    while IFS= read -r line; do
        case "$line" in
            '# branch.oid '*) oid=${line#\# branch.oid } ;;
            '# branch.head '*) branch=${line#\# branch.head } ;;
            '# branch.ab '*) read -r _ _ ahead behind <<< "$line" ;;
            '1 '*|'2 '*|'u '*)
                [[ ${line:2:1} != . ]] && staged='+'
                [[ ${line:3:1} != . ]] && unstaged='*'
                ;;
            '? '*) unstaged='*' ;;
        esac
    done <<< "$status"

    [[ $branch == '(detached)' ]] && branch=${oid:0:7}
    if [[ -z $ahead ]]; then
        sync='?'
    else
        [[ $ahead != +0 ]] && sync+='↑'
        [[ $behind != -0 ]] && sync+='↓'
    fi
    [[ -z $unstaged$staged$sync ]] && sync='✓'
    PS1_GIT=" $branch $unstaged$staged$sync"
}

PROMPT_COMMAND='__git_prompt'
PS1='\[\e[38;5;208;1m\]\u\[\e[38;5;208m\]@\[\e[38;5;208m\]\h\[\e[0m\] \[\e[1m\]\w\[\e[0m\]\[\e[2m\]${PS1_GIT}\[\e[0m\]\n\$ '

# pnpm
export PNPM_HOME='/home/claudio/.local/share/pnpm'
case ":$PATH:" in
  ":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end

# eval "$(starship init bash)"
eval "$(mise activate bash)"
