#!/bin/sh
wget -O /tmp/database.sqlite3.zst https://github.com/AnimMouse/magnetico-actions/releases/latest/download/database.sqlite3.zst
zstd -d /tmp/database.sqlite3.zst
./magneticow -a :$PORT -d sqlite3:///tmp/database.sqlite3 --no-auth