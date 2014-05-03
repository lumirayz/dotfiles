#!/bin/sh

# ======
#  Meta
# ======
DOTFILES_DIR=`pwd`
HOME_DIR="$HOME"
echo "Dotfiles directory is \"$DOTFILES_DIR\"."
echo "Home directory is \"$HOME_DIR\"."

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
