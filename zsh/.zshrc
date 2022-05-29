export XDG_CONFIG_HOME=$HOME/.config

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "It's MacOS"
    source $XDG_CONFIG_HOME/zsh/.zshrc.darwin.zsh
elif [[ "$OSTYPE" == "linux"* ]]; then
    echo "It's Linux"
    source $XDG_CONFIG_HOME/zsh/.zshrc.linux.zsh
elif [[ "$OSTYPE" == "msys"* ]]; then
    echo "It's Windows"
    source $XDG_CONFIG_HOME/zsh/.zshrc.msys.zsh
else
    echo "Unknown OS"
fi
