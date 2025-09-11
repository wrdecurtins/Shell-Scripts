#!/bin/bash
SOURCE_FILE=$1
DESTINATION_FILE=$2

rsync -e "ssh -o \"IdentitiesOnly=yes\" -i /home/$USER/.ssh/infrastructure" --progress root@reversessh:$SOURCE_FILE $DESTINATION_FILE
