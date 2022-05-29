# Fig pre block. Keep at the top of this file.
source $HOME/.fig/shell/zshrc.pre.zsh

export PYENV_ROOT=$HOME/.pyenv

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

source $ZDOTDIR/path/path.darwin.zsh

# export NPM_CONFIG_PREFIX=~/.npm

export SSH_AUTH_SOCK=$HOME/Library/Containers/org.hejki.osx.sshce.agent/Data/socket.ssh

export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

export PKG_CONFIG_PATH=/usr/local/opt/ruby/lib/pkgconfig

export LESS=FRX
export LESSOPEN="|/usr/local/bin/lesspipe.sh %s" LESS_ADVANCED_PREPROCESSOR=1

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
source $ZDOTDIR/alias/alias.darwin.zsh
source $ZDOTDIR/alias/alias.common.zsh

# neofetch

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

source $XDG_CONFIG_HOME/fzf/fzf.sh
source $ENHANCD_DIR/enhancd.sh

source $ZDOTDIR/plugin/plugin.darwin.zsh

eval "$(fnm env --use-on-cd)"
eval "$(starship init zsh)"
eval $(thefuck --alias)
eval "$(pyenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Fig post block. Keep at the bottom of this file.
source $HOME/.fig/shell/zshrc.post.zsh
