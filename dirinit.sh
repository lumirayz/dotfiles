#!/bin/sh

# ========
#  Config
# ========
HOME_DIR="$HOME"
MKDIR_DIRS="bin config misc pkg trash"

# =======
#  Mkdir
# =======
for dir in $MKDIR_DIRS; do
	[ ! -d "$dir" ] && mkdir "$dir"
done
