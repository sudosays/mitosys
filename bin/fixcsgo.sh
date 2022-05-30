#!/bin/sh

cd ~/.local/share/Steam/steamapps/common/Counter-Strike\ Global\ Offensive/bin/linux64/

mv libtcmalloc_minimal.so.0 libtcmalloc_minimal.so.0.bak
mv libtcmalloc_minimal.so.4 libtcmalloc_minimal.so.4.bak
ln -s /usr/lib64/libtcmalloc_minimal.so.4 libtcmalloc_minimal.so.0
ln -s /usr/lib64/libtcmalloc_minimal.so.4 libtcmalloc_minimal.so.4
