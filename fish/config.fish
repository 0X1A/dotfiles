#!/usr/bin/fish

# Check if on Arch and import /etc/profile.d/*
set DIST (lsb_release -i | awk -F ' ' '{print $3}')

if [ $DIST = "Arch" ]
	env -i HOME=$HOME dash -l -c printenv | sed -e '/PATH/s/:/ /g;s/=/ /;s/^/set -x /' | source
end

set config $HOME/.config/fish
set plugins $config/plugins

# Load plugins in $HOME/.config/fish/plugins
for plug in (ls $plugins)
	source $plugins/$plug
end

# Set colors for shell
if test -d $HOME/.config/base16-shell
	eval $HOME/.config/base16-shell/scripts/base16-ocean.sh
end

set PATH $PATH (ruby -rubygems -e "puts Gem.user_dir")/bin $HOME/.cargo/bin
