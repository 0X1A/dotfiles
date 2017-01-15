#!/usr/bin/fish

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

set PATH $PATH $HOME/.cargo/bin
