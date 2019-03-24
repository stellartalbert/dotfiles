export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

# Set $HOME/.etc/httpd/sites/*.conf as a vhost dir for httpd
echo "Include $HOME/.etc/httpd/sites/*.conf" >> "$DOTFILES_DIR/etc/httpd/httpd.conf"

# This one is complicated because of the escaping, but it makes a server directory for nginx at $HOME/.etc/nginx/sites/*
sed -i '' "s/include servers\/\*/include ${HOME//\//\\/}\/\.etc\/nginx\/sites\/*/" "$DOTFILES_DIR/etc/nginx/nginx.conf"

# Set user as current user in httpd 
sed -i "s/User _www/User $USER/" "$DOTFILES_DIR/etc/httpd/httpd.conf"
