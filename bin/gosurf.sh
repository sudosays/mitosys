#!/bin/zsh

milnerton="https://s46.ipcamlive.com/streams/2etknjm7zcxhpy2fs/stream.m3u8"
muizenberg="https://cams.cdn-surfline.com/cdn-int/za-muizenberg/playlist.m3u8"
llands="https://cams.cdn-surfline.com/cdn-int/za-llanduno/playlist.m3u8"

case $1 in
    "milnerton") stream=$milnerton;;
    "muiz") stream=$muizneberg;;
    "llands") stream=$llands;;
esac

mpv $stream

