#!/bin/bash

REMOTE_PATH="your-remote"
REMOTE_USER="your-username"
REMOTE_IP="your-ip-addres"
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H%M")

raspistill -vf -hf -o ./$TIME.jpg
ssh $REMOTE_USER@$REMOTE_IP "mkdir -p $REMOTE_PATH/$DATE"
scp $TIME.jpg $REMOTE_USER@$REMOTE_IP:$REMOTE_PATH/$DATE/$TIME.jpg
rm $TIME.jpg
