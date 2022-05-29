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
alias ls="lsd"
alias tree="exa -T -a --icons -I 'node_modules|.git|.history'"
alias stow="stow --ignore='.*\.(secret)'"
alias mkdir="mkdir -p"
# alias cd="z"
alias cat="bat"
alias catp="bat -p"
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