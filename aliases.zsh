
# Helpers
alias grep='grep --color=auto'
alias df='df -h' # disk free, in Gigabytes, not bytes
alias du='du -h -c' # calculate disk usage for a folder


# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"
# remove broken symlinks
alias clsym="find -L . -name . -o -type d -prune -o -type l -exec rm {} +"

alias cls="clear"
# reload zsh config
alias reload!="RELOAD=1 source ~/.zshrc"

# git aliases
alias gs="git status"
alias gd="git diff"
alias ga="git add ."
alias gcm="git commit -m"
alias gp="git push"
alias gl="git pull"
alias gc="git checkout"
alias glo="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gitconfig="code ~/.gitconfig"
alias gst="git stash"
alias pop="git stash pop"
alias gsta="git stash apply"

# zsh
alias openzs="open ~/.zshrc"
alias sourcezs="source ~/.zshrc"


#https://www.robinwieruch.de/mac-setup-web-development/
# navigate to global ssh directory
alias sshhome="cd ~/.ssh"
# edit global ssh configuration
alias sshconfig="vim ~/.ssh/config"
# edit global zsh configuration
alias zshconfig="vim ~/.zshrc"
# reload zsh configuration
alias zshsource="source ~/.zshrc"
#
alias aliasconfig="code ~/zsh/aliases.zsh"

# docker alias
alias dc="docker-compose"
#function dclear(){
#  docker rm $(docker ps -q -f 'status=exited')
#  docker rmi $(docker images -q -f "dangling=true")
#}
#export -f dclear
# alias dcps="docker-compose ps | docker-color-output"
# alias dps='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Networks}}\t{{.State}}\t{{.CreatedAt}}" | docker-color-output'

# get machine's ip address
alias ip="ipconfig getifaddr en0"

alias finder='open -a Finder ./'

# Replace netstat command on macOS to find ports used by apps
alias netstat="sudo lsof -i -P"

alias nf="npm cache clean && rm -rf node_modules package-lock.json && npm i"


# dir
alias desk="cd ~/desktop"
alias ~="cd ~" # `cd` is probably faster to type though
alias ..="cd .."
alias ..l="cd .. && ll"
alias ws="cd ~/desktop/workspace"
alias personal="cd ~/desktop/workspace/personal"

# exa replacements for ls
alias l='eza -aF --icons' # Quick ls
alias la='eza -aF --icons' # List all
alias ll='eza -laF --icons' # Show details
alias lm='eza -lahr --color-scale --icons -s=modified' # Recent
alias lb='eza -lahr --color-scale --icons -s=size' # Largest / size
alias tree='f() { eza -aF --tree -L=${1:-2} --icons };f'
alias largefiles='du -hsx -- * | sort -rh | head -10'
alias cleanallmodule='npx npkill'

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

alias su='sudo'

function gitcommit() {
    if [ "$1" != "" ]
    then
        git commit -m "$1"
    else
        git commit -m update # default commit message is `update`
     fi
}

function gitall() {
    git add .
    if [ "$1" != "" ]
    then
        git commit -m "$1"
    else
        git commit -m update() TBD # default commit message is `update`
    fi # closing statement of if-else block
    git push origin HEAD
}


# auto fetch current and merge/rebase
function gpull {
  git pull origin `git rev-parse --abbrev-ref HEAD`
}

function gupd {
  git fetch origin "$1:$1"
}

# macOS
alias port="lsof -i"
alias stop="kill -9"

# Bun
alias b="bun"
alias ba="bun add"
alias bi="bun install"
alias br="bun run"