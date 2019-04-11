pip3 install powerline-status
pip3 install powerline-gitstatus
POWERLINE_DIR=$(pip3 show powerline-status | awk '/Location: / { print $2 }')

echo ". $POWERLINE_DIR/powerline/bindings/bash/powerline.sh" >> "$DOTFILES_DIR/dots/.bash_profile"
ln -sfv "$DOTFILES_DIR/etc/powerline/config_files/colorschemes/shell/default.json" "$POWERLINE_DIR/powerline/config_files/colorschemes/shell/default.json"
ln -sfv "$DOTFILES_DIR/etc/powerline/config_files/themes/shell/default.json" "$POWERLINE_DIR/powerline/config_files/themes/shell/default.json"
