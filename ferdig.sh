#!/bin/bash

TOKEN=$(ssh ntnu "cat token.txt")
CHAT_ID=1958610129
MESSAGE=$1
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$(hostname): $(date) er $MESSAGE ferdig😀"
