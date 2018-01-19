eval $(ssh-agent -s)

xrdb -merge ~/.Xresources

exec i3

