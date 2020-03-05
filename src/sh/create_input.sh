#!/bin/bash

USER=$1
PASS=$2
URL=$3

export RD_URL=$URL
export RD_USER=$USER
export RD_PASSWORD=$PASS

LOOP=0
RETRIES=10
while [[ ${LOOP} -eq 0 && $RETRY -lt ${RETRIES} ]]
do
    curl --fail $RD_URL; Res=$?

    if [[ $Res -eq 0 ]]
    then       
        LOOP=1
    else
        sleep 30
        RETRY=$((RETRY+1))
    fi
done