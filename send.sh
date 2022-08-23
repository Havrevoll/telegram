#!/bin/bash

TOKEN=$(ssh ntnu "cat token.txt")
CHAT_ID=1958610129
MESSAGE=$(ip addr | grep 'state UP' -A3 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="IP på $HOSTNAME er $MESSAGE"
