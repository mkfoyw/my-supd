#!/bin/sh
./feed-daemon  --datadir=$1 run    &
pid=$!
wait "$pid"