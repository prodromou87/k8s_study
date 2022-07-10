#!/bin/sh

errorExit() {
    echo "*** $*" 1>&2
    exit 1
}

curl --silent --max-time 2 --insecure https://localhost:4200/ -o /dev/null || errorExit "Error GET https://localhost:4200/"
if ip addr | grep -q 192.168.10.159; then
    curl --silent --max-time 2 --insecure https://192.168.10.159:4200/ -o /dev/null || errorExit "Error GET https://192.168.10.159:4200/"
fi