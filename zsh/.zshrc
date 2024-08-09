if [[ -f "/opt/homebrew/bin/brew" ]] then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=${HISTSIZE}
HISTDUP=erase
setopt extendedglob
setopt notify
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

unsetopt autocd
unsetopt beep
unsetopt nomatch

bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

zstyle :compinstall filename "$HOME/.zshrc"
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

autoload -Uz compinit && compinit

if [[ "$OSTYPE" == "darwin"* ]]; then
    # pnpm
    export PNPM_HOME="$HOME/Library/pnpm"
    case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
    esac
    # pnpm end

    export PATH=$HOME/bin:$PATH
    export PATH=$HOME/.local/bin:$PATH
    export PATH=/usr/local/bin:$PATH
    export PATH=$HOME/.rbenv/shims:$PATH
    # export PATH=$HOME/Library/Python/3.8/bin:$PATH
    export PATH=/usr/local/sbin:$PATH
    export PATH=/usr/local/opt/ruby/bin:$PATH
    # export PATH=/usr/local/lib/ruby/gems/3.0.0/bin:$PATH
    export PATH=$HOME/.rbenv/bin:$PATH
    # export PATH=$HOME/.npm/bin:$PATH
    # export PATH=$HOME/.yarn/bin:$PATH
    # export PATH=$HOME/.config/yarn/global/node_modules/.bin:$PATH
    export PATH=/Applications/Firefox.app/Contents/MacOS:$PATH
    export PATH=/Applications/Parallels\ Desktop.app/Contents/MacOS:$PATH
    command -v pyenv >/dev/null || export PATH=$PYENV_ROOT/bin:$PATH
    export PATH=$HOME/.rd/bin:$PATH
    export PATH=$HOME/.dotnet/tools:$PATH
    export PATH=$GOPATH/bin:$PATH
    export PATH=$HOME/.kit/bin:$PATH
    export PATH=/usr/local/bin:$PATH
    export PATH=$HOME/.kenv/bin:$PATH
    export PATH=$HOME/.config/emacs/bin:$PATH
    export PATH=/usr/local/opt/bc/bin:$PATH
    export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
fi

if [[ "$OSTYPE" == "linux"* ]]; then
    # pnpm
    export PNPM_HOME="$HOME/.local/share/pnpm"
    case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
    esac
    # pnpm end

    export PATH=$HOME/bin:/usr/local/bin:$PATH
    export PATH=$HOME/.npm/bin:$PATH
fi

# Env
export NVIM_APPNAME=""
export ZPLUG_HOME="$HOME/.zplug"
export PAGER="less"
export COLORTERM="truecolor"
export GPG_TTY="$(tty)"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export EDITOR="nvim"
export PYENV_ROOT="$HOME/.pyenv"
export BROWSER="firefox"
export SASS="dart"
export LESS="FRX"
export ANSIBLE_USER="damien"
export ANSIBLE_NOCOWS=1
export BAT_CONFIG_PATH="${XDG_CONFIG_HOME}/bat/bat.conf"
export NPM_CONFIG_PREFIX="${HOME}/.npm"
export ENHANCD_DIR="$HOME/.enhancd"

if [[ "$OSTYPE" == "darwin"* ]]; then
    export LESSOPEN="|/usr/local/bin/lesspipe.sh %s" LESS_ADVANCED_PREPROCESSOR=1
    export TERMINFO_DIRS=$TERMINFO_DIRS:$HOME/.local/share/terminfo
    export SSH_AUTH_SOCK=$HOME/Library/Containers/org.hejki.osx.sshce.agent/Data/socket.ssh
    export LDFLAGS="-L/usr/local/opt/ruby/lib"
    export CPPFLAGS="-I/usr/local/opt/ruby/include"
    export PKG_CONFIG_PATH=/usr/local/opt/ruby/lib/pkgconfig
    export PINENTRY_USER_DATA="USE_CURSES=1"

    if type brew &>/dev/null; then
        FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

        autoload -Uz compinit
        compinit
    fi
fi

if [[ "$OSTYPE" == "linux"* ]]; then
    export LESSOPEN="|lesspipe.sh %s" LESS_ADVANCED_PREPROCESSOR=1
fi


########################################################################
# Aliases
########################################################################
alias nmap="sudo nmap"
alias c="code ."
alias pg="echo 'Pinging Google' && ping www.google.com"
alias deleteDSFiles="find . -name '.DS_Store' -type f -delete"
alias cls="clear"
alias vi="nvim"
alias vim="nvim"
alias ls="eza --icons --header --git --group"
alias tree="eza -T -a --icons -I 'node_modules|.git|.history'"
alias stow="stow --ignore='.*\.(secret)'"
alias mkdir="mkdir -p"
alias cat="bat"
alias grep="rga -. -i"
alias cp="cp -ip"
alias mv="mv -i"
alias rm="rm -i"
alias ddg='ddgr'
alias dig="doggo"
alias neofetch="fastfetch"
alias zcc="zig cc"

## git aliases
function gci { git commit -m "$@"; }
function gaci { git commit -am "$@"; }
alias gc="git commit"
alias gco="git checkout"
alias gsw="git switch"
alias gsm="gsw master"
alias gs="git status"
alias gpull="git pull"
alias gf="git fetch"
alias gfa="git fetch --all"
alias gf="git fetch origin"
alias gpush="git push"
alias gd="git diff"
alias ga="git add"
alias gaa="git add ."
alias gap="git add -p"
alias gb="git branch"
alias gba="git branch -a"
alias gbd="git branch -D"
alias gbr="git branch remote"
alias gfr="git remote update"
alias gbn="git checkout -b"
alias grf="git reflog"
alias grb="git rebase"
alias grp="git remote prune origin"
alias grh="git reset HEAD~" # last commit
alias gac="git commit -a"
alias gr="git restore"
alias grs="git restore --staged"
alias gsu="git gpush --set-upstream origin"
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches | emojify | less"

## checkout a new remote branch (exists remote, not locally)
## git checkout -b LocalName origin/remotebranchname (checkout a remote branch)

## npm aliases
alias rmn="rm -rf node_modules"

## other aliases
alias zshrc="$EDITOR $HOME/.zshrc"
alias topten="history | commands | sort -rn | head"
alias myip="curl http://ifconfig.io"
alias dirs='dirs -v | head -10'
alias usage='du -h -d1'
alias update="source $HOME/.zshrc"
alias sshdir="cd ~/.ssh"
alias runp="lsof -i "

alias pn='pnpm'
alias pnx='pnpm dlx'

#alias emacs="emacsclient -c -n -a 'emacs'"

## custom functions
function gpr() {
    if [ $? -eq 0 ]; then
        github_url=$(git remote -v | awk '/fetch/{print $2}' | sed -Ee 's#(git@|git://)#http://#' -e 's@com:@com/@' -e 's%\.git$%%')
        branch_name=$(git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3)
        pr_url=$github_url"/compare/master..."$branch_name
        open $pr_url
    else
        echo 'failed to open a pull request.'
    fi
}

function commands() {
    awk '{a[$2]++}END{for(i in a){print a[i] " " i}}'
}

function wg-keygen {
    echo "Generating public/private Wireguard key pair."
    read -p "Enter file in which to save the key (${HOME}/wg_key): " path
    wg genkey > ${path}
    wg pubkey < ${path} > "${path}.pub"

    echo "Your private key has been saved in ${path}"
    echo "Your public key has been saved in ${path}.pub"
    echo "The key fingerprint is: "
    cat "${path}.pub"
}

if [[ "$OSTYPE" == "darwin"* ]]; then
    alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
    alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
    alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"
    alias touch="ad"
    alias sed="gsed"
    alias gcc="/usr/local/bin/gcc-14"

    function static-dock {
        defaults write com.apple.dock static-only -bool $@
        killall Dock
    }

    function show-path {
        defaults write com.apple.finder _FXShowPosixPathInTitle -bool $@
        killall Finder
    }

    function sort-folders-first {
        defaults write com.apple.finder _FXSortFoldersFirst -bool $@
        killall Finder
    }

    function press-and-hold {
        defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool $@
    }
fi

# Set the directory for zinit and plugins
export ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download zinit, if it's not there yet
if [ ! -d "${ZINIT_HOME}" ]; then
   mkdir -p "$(dirname ${ZINIT_HOME})"
   git clone https://github.com/zdharma-continuum/zinit.git "${ZINIT_HOME}"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Quick fix for syntax highlighting
# source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source ~/.zsh/dracula_zsh-syntax-highlighting.zsh

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit light zsh-users/zsh-history-substring-search
zinit light hlissner/zsh-autopair
zinit light MichaelAquilina/zsh-you-should-use
zinit light MichaelAquilina/zsh-autoswitch-virtualenv
zinit light b4b4r07/emoji-cli

#zinit snippet OMZP::git
#zinit snippet OMZP::sudo
#zinit snippet OMZP::archlinux
#zinit snippet OMZP::aws
#zinit snippet OMZP::kubectl
#zinit snippet OMZP::kubectx
#zinit snippet OMZP::command-not-found

zinit cdreplay -q

#source $XDG_CONFIG_HOME/fzf/fzf.sh
#source $ENHANCD_DIR/enhancd.sh

eval "$(fnm env --use-on-cd)"
eval "$(starship init zsh)"
eval "$(thefuck --alias)"
eval "$(pyenv init -)"
eval "$(atuin init zsh)"
eval "$(rbenv init -)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(fx --comp zsh)"
eval "$(fzf --zsh)"

vv() {
    # Assumes all configs exist in directories named ~/.config/nvim-*
    local config=$(fd --max-depth 1 --glob 'nvim-*' ~/.config | fzf --prompt="Neovim Configs > " --height=~50% --layout=reverse --border --exit-0)
 
    # If I exit fzf without selecting a config, don't open Neovim
    [[ -z $config ]] && echo "No config selected" && return
 
    # Open Neovim with the selected config
    NVIM_APPNAME=$(basename $config) nvim $@
}

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

PATH=~/.console-ninja/.bin:$PATH
#PATH=/usr/bin:$PATH

. "$HOME/.cargo/env"
