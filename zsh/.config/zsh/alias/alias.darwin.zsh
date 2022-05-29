alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

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