#!/bin/bash
if  [[ "$PWD" != '/home/will/Desktop/simmy' ]]; then
  echo "Changing to simmy directory"
  cd /home/will/Desktop/simmy
fi

cd terraform

source .env

terraform apply -auto-approve
