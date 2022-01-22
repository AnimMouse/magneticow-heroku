#!/bin/sh
wget -O /tmp/database.sqlite3 https://github.com/AnimMouse/magnetico-actions/raw/database/database.sqlite3
./magneticow -a :$PORT -d sqlite3:///tmp/database.sqlite3 --no-auth