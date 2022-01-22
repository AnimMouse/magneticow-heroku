#!/bin/sh
wget https://github.com/boramalper/magnetico/releases/latest/download/magneticow
chmod +x magneticow
./magneticow -a :$PORT -d https://github.com/AnimMouse/magnetico-actions/raw/database/database.sqlite3 --no-auth