#!/bin/zsh

DOTFILES_PATH="$HOME/dotfiles"

for f in .??*
do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".DS_Store" ] && continue

    ln -snfv "$DOTFILES_PATH/$f" "$HOME/$f"
done
