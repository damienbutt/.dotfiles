if [[ "$OSTYPE" == "darwin"* ]]; then
    source $ZDOTDIR/.zprofile.darwin.zsh
elif [[ "$OSTYPE" == "linux"* ]]; then
    source $ZDOTDIR/.zprofile.linux.zsh
elif [[ "$OSTYPE" == "msys"* ]]; then
    source $ZDOTDIR/.zprofile.msys.zsh
else
    echo "Unknown OS"
fi
