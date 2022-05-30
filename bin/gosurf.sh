#!/bin/zsh

milnerton="https://www.youtube.com/watch?v=TRit2n74s6Y"
miln2="https://s46.ipcamlive.com/streams/2ey05eslbm76t1hjy/stream.m3u8"
muizenberg="https://cams.cdn-surfline.com/cdn-int/za-muizenberg/playlist.m3u8"
mzn2="https://youtu.be/3yrwXqkpuc0"
llands="https://cams.cdn-surfline.com/cdn-int/za-llanduno/playlist.m3u8"
mznbrg_backup="https://muizenberg.blob.core.windows.net/surfcam/SURFCAM.jpg"

case $1 in
    "milnerton") stream=$milnerton;;
    "muiz") stream=$muizenberg;;
    "llands") stream=$llands;;
esac

mpv $stream

