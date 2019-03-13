set -x
C=$(docker create --privileged -v $PWD/vfs2:/var/lib/docker golem-deckerized:step1 /bin/bash /work/setup-dev.sh)

docker cp setup-dev.sh "${C}:/work/setup-dev.sh"
docker start -ai $C
docker diff $C
docker container commit "${C}" golem-deckerized:step2

