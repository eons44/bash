[ -z "$PS1" ] && return
for f in $HOME/bash/*.bash ; do
    source $f;
done
