#!/bin/sh
wget -O - https://github.com/AnimMouse/magnetico-actions/releases/latest/download/database.sqlite3.zst | zstd -d -o /tmp/database.sqlite3
./magneticow -a :$PORT -d sqlite3:///tmp/database.sqlite3 --no-auth