feh --bg-scale ~/harbour/pics/wallpapers/default

eval $(ssh-agent -s)

xrdb -merge ~/.Xresources

xbindkeys

dunst &

dwmblocks &

emacs --daemon &
