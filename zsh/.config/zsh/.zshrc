if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "It's MacOS"
    source $ZDOTDIR/.zshrc.darwin.zsh
elif [[ "$OSTYPE" == "linux"* ]]; then
    echo "It's Linux"
    source $ZDOTDIR/.zshrc.linux.zsh
elif [[ "$OSTYPE" == "msys"* ]]; then
    echo "It's Windows"
    source $ZDOTDIR/.zshrc.msys.zsh
else
    echo "Unknown OS"
fi
