#if [ -f /usr/lib/git-core/git-sh-prompt ]; then
    source /usr/lib/git-core/git-sh-prompt
#fi

#from http://brettterpstra.com/2009/11/17/my-new-favorite-bash-prompt/
prompt_command () {
    #first, check for trains.
    RET="$?"
#    if [ $RET -eq 127 ]; then
#        sl
#    fi
    if [ $RET -eq 0 ]; then # set an error string for the prompt, if applicable
        ERRPROMPT=" "
    else
        ERRPROMPT='($RET) '
    fi
    if [ "\$(type -t __git_ps1)" ]; then # if we're in a Git repo, show current branch
        BRANCH="\$(__git_ps1 '[%s] ')"
    fi
    local TIME=`fmt_time` # format time for prompt string
    local GREEN="\[\033[0;32m\]"
    local CYAN="\[\033[0;36m\]"
    local BCYAN="\[\033[1;36m\]"
    local BLUE="\[\033[0;34m\]"
    local GRAY="\[\033[0;37m\]"
    local DKGRAY="\[\033[1;30m\]"
    local WHITE="\[\033[1;37m\]"
    local RED="\[\033[0;31m\]"
    # return color to Terminal setting for text color
    local DEFAULT="\[\033[0;39m\]"
    local THEME=$(cat $HOME/.theme)
    # set the titlebar to the last 2 fields of pwd
    # local TITLEBAR='\[\e]2;`pwdtail`\a'
    local ENDING="\$"
    if [[ $EUID -eq 0 ]]; then
        ENDING="#"
    fi

    export PS1="${THEME}─────<${DEFAULT}${TIME}${THEME}>────\n${THEME}┌──<${THEME}\u${DKGRAY}@${THEME}\
\h${THEME}>─${RED}$ERRPROMPT${DEFAULT}\
\w${GREEN}${BRANCH}\n${THEME}└─${DEFAULT}$ENDING"
}
PROMPT_COMMAND=prompt_command

fmt_time () { #format time just the way I likes it
    if [ `date +%p` = "PM" ]; then
        meridiem="pm"
    else
        meridiem="am"
    fi
    date +"%l:%M:%S$meridiem"|sed 's/ //g'
}
pwdtail () { #returns the last 2 fields of the working directory
    pwd|awk -F/ '{nlast = NF -1;print $nlast"/"$NF}'
}
