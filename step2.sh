set -x
C=$(docker create --privileged -v $PWD/vfs2:/var/lib/docker golem-dockerized:step1 /bin/bash /work/setup-dev.sh)

docker cp setup-dev.sh "${C}:/work/setup-dev.sh"
docker start -ai $C
docker diff $C
docker container commit "${C}" golem-dockerized:step2
docker rm -f $C

