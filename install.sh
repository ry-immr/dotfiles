#!/bin/zsh

DOTFILES_PATH="$HOME/dotfiles"

git clone git@github.com:ry-immr/dotfiles.git "$DOTFILES_PATH"

cd $DOTPATH

for f in .??*
do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".DS_Store" ] && continue

    ln -snfv "$f" "$HOME/$f"
done
