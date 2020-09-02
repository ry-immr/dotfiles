#!/bin/zsh

DOTFILES_PATH="$HOME/dotfiles"

git clone git@github.com:ry-immr/dotfiles.git "$DOTFILES_PATH"

cd "$DOTFILES_PATH"
if [ $? -ne 0 ]; then
    die "not found: $DOTFILES_PATH"
fi

for f in .??*
do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".DS_Store" ] && continue

    ln -snfv "$DOTFILES_PATH/$f" "$HOME/$f"
done
