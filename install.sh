#!/bin/sh

# ========
#  Config
# ========
DOTFILES_DIR=`pwd`
HOME_DIR="$HOME"
echo "Dotfiles directory is \"$DOTFILES_DIR\"."
echo "Home directory is \"$HOME_DIR\"."

FILES_REMOVE="$HOME_DIR/.tmux.bar $HOME_DIR/.tmux.conf $HOME_DIR/.vim $HOME_DIR/.zshrc $HOME_DIR/.vimrc $HOME_DIR/.gvimrc"

# ==================
#  Dependency check
# ==================
if [ ! -d "$HOME_DIR/.oh-my-zsh" ]; then
	echo "Oh my zsh not installed, aborting…"
	exit
fi

# ======
#  Warn
# ======
echo "This script will REMOVE the following files and directories before replacing them:"
for file in $FILES_REMOVE; do
	echo " - $file"
done
echo
echo -n "Type \"yes\" if you wish to continue: "
read line
if [ x"$line" != x"yes" ]; then
	echo "Aborting…"
	exit
fi

# ========
#  Remove
# ========
echo "Removing files and directories…"
for file in $FILES_REMOVE; do
	rm -rf "$file"
done

# ======
#  Tmux
# ======
echo "Installing tmux configs…"
ln -s "$DOTFILES_DIR/tmux/tmux.bar" "$HOME_DIR/.tmux.bar"
ln -s "$DOTFILES_DIR/tmux/tmux.conf" "$HOME_DIR/.tmux.conf"

# =====
#  Zsh
# =====
echo "Installing zsh configs…"
ln -s "$DOTFILES_DIR/zsh/zshrc" "$HOME_DIR/.zshrc"

# =====
#  Vim
# =====
echo "Installing vim configs…"
ln -s "$DOTFILES_DIR/vim/vimrc" "$HOME_DIR/.vimrc"
ln -s "$DOTFILES_DIR/vim/vimrc" "$HOME_DIR/.gvimrc"

# =============
#  Vim Plugins
# =============
echo "Installing pathogen and vim plugin dirs…"
VIM_DIR="$HOME_DIR/.vim"
mkdir "$VIM_DIR"
mkdir "$VIM_DIR/colors"
ln -s "$DOTFILES_DIR/vim/plugins" "$VIM_DIR/bundle"
ln -s "$DOTFILES_DIR/vim/pathogen/autoload" "$VIM_DIR/autoload"

# ============
#  Vim Colors
# ============
echo "Installing vim colors…"
ln -s "$DOTFILES_DIR/vim/colors/molokai/colors/molokai.vim" "$VIM_DIR/colors/molokai.vim"
