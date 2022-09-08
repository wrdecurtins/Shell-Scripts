docker run --rm --privileged multiarch/qemu-user-static --reset -p yes && docker run --network host -it docker.raven.engineering/atd/dot/db1/db1:latest python3 dot.py -e dev --sim -m 254
