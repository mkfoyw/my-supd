#!/bin/bash

PRJ_ROOT=$(dirname `pwd`)
srvHome=/usr/lib/systemd/system

case "$1" in 
    "install")
        if [ -f $srvHome/supd.service  ]; then
            echo "Already installed"
            exit 0
        fi
        echo "PRJ_ROOT:"$PRJ_ROOT
        cat supd.service|awk '{gsub("\\$PRJ_ROOT","'$PRJ_ROOT'");print $0}'>tmp.service
        sudo cp tmp.service $srvHome/supd.service 
        rm tmp.service
        sudo systemctl daemon-reload
        sudo systemctl enable supd
        sudo systemctl start supd
        sleep 3
        sudo systemctl status supd
        ;;
    "clean")
        if [ -f $srvHome/supd.service ]; then
            sudo systemctl stop supd
            sudo systemctl disable supd
            sudo rm $srvHome/supd.service 
            sudo systemctl daemon-reload
        else
            echo "Not installed"
        fi
        ;;
    *)
        echo "install -- to install on system boot"
        echo "clean -- to remove system bootable"
        ;;
esac
