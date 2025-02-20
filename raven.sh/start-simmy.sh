if [ "$PWD" != '/home/will/Desktop/simmy' ]; then
  echo "Changing to simmy directory"
  cd /home/will/Desktop/simmy
fi

./simmy.sh -u will_simmy -D
