#!/bin/sh
# ==== https://original-game.com/how-to-make-dot-files/ ======


# prepare for errors and undefined varaiables
set -eu

DOTFILES_DIR=$(cd $(dirname $0); pwd)
cd $DOTFILES_DIR

# repeat for files and directory begined from `.`
for f in .??*; do
	# exclude files and directories
	[[ "$f" == ".git" ]] && continue
	[[ "$f" == ".gitconfig" ]] && continue
	[[ "$f" == ".gitignore" ]] && continue
	[[ "$f" == ".DS_Store" ]] && continue
	[[ "$f" =~ .swp$ ]] && continue

	# create symbolic links
	ln -snfv ${DOTFILES_DIR}/$f ~
done
