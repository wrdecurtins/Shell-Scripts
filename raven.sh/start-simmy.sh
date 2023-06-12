if  [[ "$PWD" != '/home/will/Desktop/simmy' ]]; then
  echo "Changing to simmy directory"
  cd /home/will/Desktop/simmy
fi

./terraform/utility/start-simmy.sh
