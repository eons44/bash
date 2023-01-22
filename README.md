# Séon's bashrc files

```
sudo apt install git cowsay fortune ddate sl
cd ~/git/
git clone https://github.com/eons44/bash
cd bash
echo '\[\033[0;36m\]' > ~/.theme
./setup
cd
cat << EOF > ~/bash/fzf.bash
# Setup fzf
# ---------
if [[ ! "$PATH" == *$HOME/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}$HOME/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$HOME/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "$HOME/.fzf/shell/key-bindings.bash"

EOF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

Answers are yes, yes, no.