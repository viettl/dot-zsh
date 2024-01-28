
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
alias glo="git log --oneline"

# navigate to global ssh directory
alias sshhome="cd ~/.ssh"
# edit global ssh configuration
alias sshconfig="vim ~/.ssh/config"
# edit global zsh configuration
alias zshconfig="vim ~/.zshrc"
# reload zsh configuration
alias zshsource="source ~/.zshrc"


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
alias personal="cd ~/desktop/personal"

# exa replacements for ls
alias l='exa -aF --icons' # Quick ls
alias la='exa -aF --icons' # List all
alias ll='exa -laF --icons' # Show details
alias lm='exa -lahr --color-scale --icons -s=modified' # Recent
alias lb='exa -lahr --color-scale --icons -s=size' # Largest / size
alias tree='f() { exa -aF --tree -L=${1:-2} --icons };f'

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
