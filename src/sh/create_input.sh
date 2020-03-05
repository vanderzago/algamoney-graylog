#!/bin/bash

USER=$1
PASS=$2
URL=$3
APP=$4

LOOP=0
RETRIES=10
while [[ ${LOOP} -eq 0 && $RETRY -lt ${RETRIES} ]]
do
    curl --fail $URL; Res=$?

    if [[ $Res -eq 0 ]]
    then
        echo $APP is up
        LOOP=1
    else
        echo $APP
        sleep 30
        RETRY=$((RETRY+1))
    fi
done