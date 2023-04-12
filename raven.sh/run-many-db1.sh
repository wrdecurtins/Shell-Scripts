if  [[ "$PWD" != '/home/will/Desktop/db1' ]]; then
  echo "Changing to db1 directory"
  cd /home/will/Desktop/db1
fi

docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
docker run -d --network host -it docker.raven.engineering/atd/dot/db1/db1:latest python3 dot.py -e dev --sim -m 254
docker run -d --env DOT_SERIAL=SIMULATION_Will2 --network host -it docker.raven.engineering/atd/dot/db1/db1:latest python3 dot.py -e dev --sim -m 254
