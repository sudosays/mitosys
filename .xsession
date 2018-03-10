eval $(ssh-agent -s)

xrdb -merge ~/.Xresources

export CONFIG=$HOME/mitosys
export PATH=$CONFIG/bin:$PATH

exec i3

