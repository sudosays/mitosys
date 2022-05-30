export CONFIG=$HOME/mitosys
export PATH=$CONFIG/bin:$PATH
export PATH=~/go/bin:$PATH
export _JAVA_AWT_WM_NONREPARENTING=1
export EDITOR=$(which vim)

# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd
