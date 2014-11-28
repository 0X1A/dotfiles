#!/bin/bash

# Extracts compressed files
ext () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       rar x $1       ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Clears trailing white space on files
cleartrailing () {
    sed --in-place 's/[[:space:]]\+$//' $@
}

# Numbered cat piped to the less pager
catless () {
    cat -n $1 | less
}

# Help for pad
pad-help() {
	echo "usage: pad [option] [argument]"
	echo
	echo "Options:"
	echo "	top, tp		- increase top padding by \`argument'"
	echo "	bottom, btm	- increase bottom padding by \`argument'"
	echo "	right, rgt	- increase right padding by \`argument'"
	echo "	left, lft	- increase left padding by \`argument'"
	echo "	gap, gp		- increase window gap by \`argument'"
	echo "	sides		- increase padding of allsides by \`argument'"
}

# Padding tool for bspwm
pad() {
	case "$1" in
		'tp'|'top')
			bspc config top_padding "$2"
			;;
		'btm'|'bottom')
			bspc config bottom_padding "$2"
			;;
		'lft'|'left')
			bspc config left_padding "$2"
			;;
		'rgt'|'right')
			bspc config right_padding "$2"
			;;
		'gp'|'gap')
			bspc config window_gap "$2"
			;;
		'sides')
			bspc config left_padding "$2"
			bspc config right_padding "$2"
			bspc config bottom_padding "$2"
			bspc config top_padding "$2 + 20" # Accomodates top panel
			;;
		*)
			pad-help
			;;
	esac
}
