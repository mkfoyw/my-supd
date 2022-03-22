#!/bin/sh


export http_proxy=http://192.168.56.1:1087
export https_proxy=http://192.168.56.1:1087
export ALL_PROXY=socks5://192.168.56.1:1080

./feed-client  --datadir=$1 run  &
pid=$!
wait "$pid"