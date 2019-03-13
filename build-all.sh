GIT_BRANCH=${GIT_BRANCH:-"0.19.0"}
docker build --build-arg GIT_BRANCH="$GIT_BRANCH" step1 -t golem-deckerized:step1
sh step2.sh
docker build step3 -t golem-deckerized:step3

