# Load all system .xinits
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

# Merge the xrdb resources file
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Custom user stuff
feh --bg-scale ~/Vault/Wallpapers/*
exec i3
