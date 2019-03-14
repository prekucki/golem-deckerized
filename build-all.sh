#!/bin/bash
set -x
GIT_BRANCH=${1:-"0.19.0"}

[[ ${GIT_BRANCH} == "gu-gateway" ]] && STEP3_TYPE="-gw"

docker build --build-arg GIT_BRANCH="$GIT_BRANCH" step1 -t golem-dockerized:step1 &&
    sh step2.sh &&
    docker build step3${STEP3_TYPE} -t golem-dockerized:step3${STEP3_TYPE}
