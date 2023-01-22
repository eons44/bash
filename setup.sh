mkdir -v $HOME/bash
for f in $(ls bash/); do
	ln -sv "$(pwd)/bash/$f" "$HOME/bash/$f"
done
mv -v $HOME/.bashrc $HOME/.bashrc.orig
ln -sv "$(pwd)/.bashrc" "$HOME/.bashrc"