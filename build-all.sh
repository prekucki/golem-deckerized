set -x
GIT_BRANCH=${1:-"0.19.0"}
docker build --build-arg GIT_BRANCH="$GIT_BRANCH" step1 -t golem-dockerized:step1 && sh step2.sh && docker build step3-gw -t golem-dockerized:step3-gw

