# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob notify
unsetopt autocd beep nomatch
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [[ "$OSTYPE" == "darwin"* ]]; then
    # pnpm
    export PNPM_HOME="$HOME/Library/pnpm"
    case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
    esac
    # pnpm end

    export PATH=$HOME/bin:$PATH
    export PATH=/usr/local/bin:$PATH
    # export PATH=$HOME/Library/Python/3.8/bin:$PATH
    export PATH=/usr/local/sbin:$PATH
    export PATH=/usr/local/opt/ruby/bin:$PATH
    export PATH=/usr/local/lib/ruby/gems/3.0.0/bin:$PATH
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
    export PATH=$HOME/.kenv/bin:$PATH
    export PATH=$HOME/.config/emacs/bin:$PATH
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
export ZPLUG_HOME="$HOME/.zplug"
export PAGER="most"
export COLORTERM="truecolor"
export GPG_TTY="$(tty)"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export EDITOR="nvim"
export PYENV_ROOT="$HOME/.pyenv"
export BROWSER="lynx"
export SASS="dart"
export LESS="FRX"
export ANSIBLE_USER="damien"
export ANSIBLE_NOCOWS=1
export BAT_CONFIG_PATH="$XDG_CONFIG_HOME/bat/bat.conf"
export NPM_CONFIG_PREFIX="$HOME/.npm"
export ENHANCD_DIR="$HOME/.enhancd"

if [[ "$OSTYPE" == "darwin"* ]]; then
    export LESSOPEN="|/usr/local/bin/lesspipe.sh %s" LESS_ADVANCED_PREPROCESSOR=1
    export TERMINFO_DIRS=$TERMINFO_DIRS:$HOME/.local/share/terminfo
    export SSH_AUTH_SOCK=$HOME/Library/Containers/org.hejki.osx.sshce.agent/Data/socket.ssh
    export LDFLAGS="-L/usr/local/opt/ruby/lib"
    export CPPFLAGS="-I/usr/local/opt/ruby/include"
    export PKG_CONFIG_PATH=/usr/local/opt/ruby/lib/pkgconfig

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
alias ll="ls -1a"
alias ..="cd ../"
alias ..l="cd ../ && ll"
alias pg="echo 'Pinging Google' && ping www.google.com"
alias de="cd ~/Desktop"
alias dd="cd ~/code"
alias d="cd ~/code && cd "
alias deleteDSFiles="find . -name '.DS_Store' -type f -delete"
alias npm-update="npx npm-check -u"
alias cls="clear"
alias vi="nvim"
alias vim="nvim"
# alias code="codium"
alias ls="exa --icons --header --git --group"
alias tree="exa -T -a --icons -I 'node_modules|.git|.history'"
alias stow="stow --ignore='.*\.(secret)'"
alias mkdir="mkdir -p"
# alias cd="z"
alias cat="bat"
alias grep="rg -. -i"
alias cp='cp -ip'
alias mv='mv -i'
alias rm='rm -i'

## git aliases
function gci { git commit -m "$@"; }
function gaci { git commit -am "$@"; }
alias gc="git commit"
alias gco="git checkout"
alias gsw="git switch"
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
alias ni="npm install"
alias nrs="npm run start -s --"
alias nrb="npm run build -s --"
alias nrd="npm run dev -s --"
alias nrt="npm run test -s --"
alias nrtw="npm run test:watch -s --"
alias nrv="npm run validate -s --"
alias rmn="rm -rf node_modules"
alias flush-npm="rm -rf node_modules && npm i && echo NPM is done"

## yarn aliases
alias yar="yarn run"      # lists all the scripts we have available
alias yab="yarn build"    # build dist directory for each package
alias yal="yarn lint:fix" # format source and auto-fix eslint issues
alias yac="yarn commit"   # open a Q&A prompt to help construct valid commit messages
alias yas="yarn start"
alias yasb="yarn storybook:start" # start storybook
alias yat="yarn test"             # run the unit tests*
alias yatw="yarn test:watch"      #run the unit tests for files changed on save

## docker
alias dockerstop='docker-compose stop'
alias dockerrestart='docker-compose restart'
alias dockerup='docker-compose up -d'
alias dockerrm='docker-compose rm --all'

## other aliases
alias zshrc="$EDITOR $HOME/.zshrc"
alias topten="history | commands | sort -rn | head"
alias myip="curl http://ipecho.net/plain; echo"
alias dirs='dirs -v | head -10'
alias usage='du -h -d1'
alias update="source $HOME/.zshrc"
alias sshdir="cd ~/.ssh"
alias runp="lsof -i "
alias md="mkdir "
alias ..='cd ..'
alias ...='cd ../..'
# alias vim="nvim"
# alias vi="nvim"
alias privatebin="privatebin -host https://privatebin.norgateav.com"

alias pn='pnpm'
alias pnx='pnpm dlx'

alias emacs="emacsclient -c -a 'emacs'"

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
    alias rm="rm -i"
    alias mv="mv -i"

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


#######################################################################
# Zplug
#######################################################################
# Quick fix for syntax highlighting
# source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source ~/.zsh/dracula_zsh-syntax-highlighting.zsh

# Zplug
source ~/.zplug/init.zsh

# Make sure to use double quotes
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "hlissner/zsh-autopair", defer:2
zplug "MichaelAquilina/zsh-you-should-use"
zplug "MichaelAquilina/zsh-autoswitch-virtualenv"

# Use the package as a command
# And accept glob patterns (e.g., brace, wildcard, ...)
# zplug "Jxck/dotfiles", as:command, use:"bin/{histuniq,color}"

# Can manage everything e.g., other person's zshrc
# zplug "tcnksm/docker-alias", use:zshrc

# Disable updates using the "frozen" tag
# zplug "k4rthik/git-cal", as:command, frozen:1

# Grab binaries from GitHub Releases
# and rename with the "rename-to:" tag
# zplug "junegunn/fzf", \
#     from:gh-r, \
#     as:command, \
#     use:"*darwin*amd64*"

# Supports oh-my-zsh plugins and the like
# zplug "plugins/git",   from:oh-my-zsh

# Also prezto
# zplug "modules/prompt", from:prezto

# Load if "if" tag returns true
# zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"

# Run a command after a plugin is installed/updated
# Provided, it requires to set the variable like the following:
# ZPLUG_SUDO_PASSWORD="********"
# zplug "jhawthorn/fzy", \
#     as:command, \
#     rename-to:fzy, \
#     hook-build:"make && sudo make install"

# Supports checking out a specific branch/tag/commit
zplug "b4b4r07/enhancd" #, at:v1
# zplug "mollifier/anyframe", at:4c23cb60

# Can manage gist file just like other packages
# zplug "b4b4r07/79ee61f7c140c63d2786", \
#     from:gist, \
#     as:command, \
#     use:get_last_pane_path.sh

# Support bitbucket
# zplug "b4b4r07/hello_bitbucket", \
#     from:bitbucket, \
#     as:command, \
#     use:"*.sh"

# Rename a command with the string captured with `use` tag
# zplug "b4b4r07/httpstat", \
#     as:command, \
#     use:'(*).sh', \
#     rename-to:'$1'

# Group dependencies
# Load "emoji-cli" if "jq" is installed in this example
# zplug "stedolan/jq", \
#     from:gh-r, \
#     as:command, \
#     rename-to:jq
zplug "b4b4r07/emoji-cli" #, \
#     on:"stedolan/jq"
# Note: To specify the order in which packages should be loaded, use the defer
#       tag described in the next section

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
# (If the defer tag is given 2 or above, run after compinit command)
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zdharma-continuum/fast-syntax-highlighting", defer:2

# Can manage local plugins
zplug "~/.zsh", from:local

# Load theme file
# zplug 'dracula/zsh', as:theme

# Let zplug manage itself
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load # --verbose

source $XDG_CONFIG_HOME/fzf/fzf.sh
source $ENHANCD_DIR/enhancd.sh

eval "$(fnm env --use-on-cd)"
eval "$(starship init zsh)"
eval "$(thefuck --alias)"
eval "$(pyenv init -)"
eval "$(atuin init zsh)"
eval "$(rbenv init -)"
eval "$(zoxide init --cmd cd zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
