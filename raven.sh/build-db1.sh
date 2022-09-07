./runbuild --release && docker run --rm --privileged multiarch/qemu-user-static --reset -p yes &&  docker run --network host -it docker.raven.engineering/atd/dot/db1/
