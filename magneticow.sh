#!/bin/sh
wget -O - $DATABASE_URL | zstd -d -o /tmp/database.sqlite3
./magneticow -a :$PORT -d sqlite3:///tmp/database.sqlite3 --no-auth