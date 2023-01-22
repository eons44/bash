alias h='history'
alias j='jobs'
alias l='ls -CF'
alias k='kubectl'
alias ka='kubectl apply -f'
alias kd='kubectl delete -f'
alias la='ls -la'
alias ll='ls -alF'
alias m='less'
alias more='less'
#alias vi='gvim'
alias findw='find . ! -type d -perm +222'
alias pull_all='for d in $(ls); do && cd $d && pwd && git pull && cd ..; done'

alias cdgit="cd $HOME/git"

alias webclone="wget -mkEpnp"
