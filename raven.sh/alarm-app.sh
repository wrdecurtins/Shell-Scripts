#!/bin/bash
if  [[ "$PWD" != '/home/will/Desktop/alarmx-rs' ]]; then
  echo "Changing to alarmx-rs directory"
  cd /home/will/Desktop/alarmx-rs
fi

cargo run -p alarming
