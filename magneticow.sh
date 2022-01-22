#!/bin/sh
wget https://github.com/boramalper/magnetico/releases/latest/download/magneticow
chmod +x magneticow
wget -O /tmp/database.sqlite3 https://github.com/AnimMouse/magnetico-actions/raw/database/database.sqlite3
./magneticow -a :$PORT -d /tmp/database.sqlite3 --no-auth