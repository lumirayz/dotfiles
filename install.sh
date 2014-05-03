#!/bin/sh

# ======
#  Meta
# ======
export DOTFILES_DIR="$HOME/.dotfiles"

# ======
#  Tmux
# ======
ln -s "$DOTFILES_DIR/tmux/tmux.bar" "~/.tmux.bar"
ln -s "$DOTFILES_DIR/tmux/tmux.conf" "~/.tmux.conf"

# =====
#  Zsh
# =====
ln -s "$DOTFILES_DIR/zsh/zshrc" "~/.zshrc"

# =====
#  Vim
# =====
ln -s "$DOTFILES_DIR/vim/vimrc" "~/.vimrc"
ln -s "$DOTFILES_DIR/vim/vimrc" "~/.gvimrc"

# =============
#  Vim Plugins
# =============
if [ ! -d "~/.vim/" ]; then
	mkdir "~/.vim"
fi
ln -s "$DOTFILES_DIR/vim/plugins" "~/.vim/bundle"
ln -s "$DOTFILES_DIR/vim/pathogen/autoload" "~/vim/autoload"
