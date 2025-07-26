# Setup fzf
# ---------
if [[ ! "$PATH" == */home/eons/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/eons/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/eons/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/eons/.fzf/shell/key-bindings.bash"
