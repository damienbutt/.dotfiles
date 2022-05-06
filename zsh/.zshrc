# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export XDG_CONFIG_HOME=$HOME/.config

export PYENV_ROOT=$HOME/.pyenv

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$PATH
export PATH=/usr/local/bin:$PATH
# export PATH=$HOME/Library/Python/3.8/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=/usr/local/lib/ruby/gems/3.0.0/bin:$PATH
# export PATH=$HOME/.npm/bin:$PATH
# export PATH=$HOME/.yarn/bin:$PATH
# export PATH=$HOME/.config/yarn/global/node_modules/.bin:$PATH
export PATH=/Applications/Firefox.app/Contents/MacOS:$PATH
command -v pyenv >/dev/null || export PATH=$PYENV_ROOT/bin:$PATH

# export NPM_CONFIG_PREFIX=~/.npm

export SSH_AUTH_SOCK=$HOME/Library/Containers/org.hejki.osx.sshce.agent/Data/socket.ssh

export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

export PKG_CONFIG_PATH=/usr/local/opt/ruby/lib/pkgconfig

export LESS=FRX
export LESSOPEN="|/usr/local/bin/lesspipe.sh %s" LESS_ADVANCED_PREPROCESSOR=1

export GPG_TTY=$(tty)

export BAT_CONFIG_PATH=$XDG_CONFIG_HOME/bat/bat.conf

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="dracula-pro"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
#  git
#  zsh-autosuggestions
#  zsh-syntax-highlighting
  bundler
  dotenv
  macos
  rake
  last-working-dir
  web-search
  cloudfoundry
  z
  history
  extract
  sudo
  yarn
  auto-notify
  enhancd
  emoji-cli
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# custom aliases
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
alias c="code .";
alias ll="ls -1a";
alias ..="cd ../";
alias ..l="cd ../ && ll";
alias pg="echo 'Pinging Google' && ping www.google.com";
alias de="cd ~/Desktop";
alias dd="cd ~/code";
alias d="cd ~/code && cd "
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias deleteDSFiles="find . -name '.DS_Store' -type f -delete"
alias npm-update="npx npm-check -u";
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"
alias cls="clear"
alias vi="nvim"
alias vim="nvim"
# alias code="codium"
alias ls="lsd"
alias tree="tree -I 'node_modules|.git|.history' -a"
alias stow="stow --ignore='.*\.(secret)'"

## git aliases
function gci { git commit -m "$@"; }
function gaci { git commit -am "$@"; }
alias gc="git commit"
alias gco="git checkout";
alias gsw="git switch";
alias gs="git status";
alias gpull="git pull";
alias gf="git fetch";
alias gfa="git fetch --all";
alias gf="git fetch origin";
alias gpush="git push";
alias gd="git diff";
alias ga="git add";
alias gaa="git add ."
alias gap="git add -p"
alias gb="git branch";
alias gba="git branch -a"
alias gbd="git branch -D"
alias gbr="git branch remote"
alias gfr="git remote update"
alias gbn="git checkout -b"
alias grf="git reflog";
alias grb="git rebase"
alias grp="git remote prune origin";
alias grh="git reset HEAD~" # last commit
alias gac="git commit -a";
alias gr="git restore";
alias grs="git restore --staged";
alias gsu="git gpush --set-upstream origin"
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches | emojify | less"

## checkout a new remote branch (exists remote, not locally)
## git checkout -b LocalName origin/remotebranchname (checkout a remote branch)

## npm aliases
alias ni="npm install";
alias nrs="npm run start -s --";
alias nrb="npm run build -s --";
alias nrd="npm run dev -s --";
alias nrt="npm run test -s --";
alias nrtw="npm run test:watch -s --";
alias nrv="npm run validate -s --";
alias rmn="rm -rf node_modules";
alias flush-npm="rm -rf node_modules && npm i && echo NPM is done";

## yarn aliases
alias yar="yarn run"; # lists all the scripts we have available
alias yab="yarn build"; # build dist directory for each package
alias yal="yarn lint:fix"; # format source and auto-fix eslint issues
alias yac="yarn commit"; # open a Q&A prompt to help construct valid commit messages
alias yas="yarn start";
alias yasb="yarn storybook:start"; # start storybook
alias yat="yarn test"; # run the unit tests*
alias yatw="yarn test:watch"; #run the unit tests for files changed on save

## docker
alias dockerstop='docker-compose stop'
alias dockerrestart='docker-compose restart'
alias dockerup='docker-compose up -d'
alias dockerrm='docker-compose rm --all'

## other aliases
alias zshrc='code ~/.zshrc'
alias topten="history | commands | sort -rn | head"
alias myip="curl http://ipecho.net/plain; echo"
alias dirs='dirs -v | head -10'
alias usage='du -h -d1'
alias update="source ~/.zshrc"
alias sshdir="cd ~/.ssh"
alias runp="lsof -i "
alias md="mkdir "
alias ..='cd ..'
alias ...='cd ../..'
# alias vim="nvim"
# alias vi="nvim"
alias privatebin="privatebin -host https://privatebin.norgateav.com"

## custom functions
function gpr() {
  if [ $? -eq 0 ]; then
    github_url=`git remote -v | awk '/fetch/{print $2}' | sed -Ee 's#(git@|git://)#http://#' -e 's@com:@com/@' -e 's%\.git$%%'`;
    branch_name=`git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3`;
    pr_url=$github_url"/compare/master..."$branch_name
    open $pr_url;
  else
    echo 'failed to open a pull request.';
  fi
}

function commands() {
  awk '{a[$2]++}END{for(i in a){print a[i] " " i}}'
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

neofetch

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/mc mc

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-you-should-use/you-should-use.plugin.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/local/share/dracula-zsh-syntax-highlighting/zsh-syntax-highlighting.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(fnm env --use-on-cd)"
eval "$(starship init zsh)"
eval $(thefuck --alias)
eval "$(pyenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"
