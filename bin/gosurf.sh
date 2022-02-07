#!/bin/zsh

milnerton="https://s46.ipcamlive.com/streams/2etknjm7zcxhpy2fs/stream.m3u8"
muizenberg="https://cams.cdn-surfline.com/cdn-int/za-muizenberg/playlist.m3u8"

if [[ $1 == "muizenberg" ]]; then
    stream=$muizenberg
else
    stream=$milnerton
fi

mpv $stream

