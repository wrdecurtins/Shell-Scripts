#!/bin/bash
if  [[ "$PWD" != '/home/will/Desktop/alarm-schema' ]]; then
  echo "Changing to alarm-schema directory"
  cd /home/will/Desktop/alarm-schema
fi

cargo run -p alarming
