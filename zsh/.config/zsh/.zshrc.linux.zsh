export PYENV_ROOT=$HOME/.pyenv

# export ZPLUG_HOME=/usr/local/opt/zplug
# source $ZPLUG_HOME/init.zsh

source $ZDOTDIR/path/path.linux.zsh

# Set NPM Prefix
export NPM_CONFIG_PREFIX=$HOME/.npm

export SASS=dart

export GPG_TTY=$(tty)

export BAT_CONFIG_PATH=$XDG_CONFIG_HOME/bat/bat.conf

source $ZDOTDIR/oh-my-zsh/oh-my-zsh.zsh

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

source $ZDOTDIR/alias/alias.linux.zsh
source $ZDOTDIR/alias/alias.common.zsh

# autoload -U +X bashcompinit && bashcompinit
# complete -o nospace -C /usr/local/bin/mc mc

source $XDG_CONFIG_HOME/fzf/fzf.sh
source $ENHANCD_DIR/enhancd.sh

source $ZDOTDIR/plugin/plugin.linux.zsh

eval "$(fnm env --use-on-cd)"
eval "$(starship init zsh)"
eval $(thefuck --alias)
eval "$(pyenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
