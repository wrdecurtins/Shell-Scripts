#!/bin/bash
if  [[ "$PWD" != '/home/will/Desktop/alarmx-schema' ]]; then
  echo "Changing to alarmx-schema directory"
  cd /home/will/Desktop/alarmx-schema
fi

cargo run -p alarming
