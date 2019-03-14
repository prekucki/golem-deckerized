#! /bin/bash

source /work/venv/bin/activate
cd /work/golem
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

echo params: $@
GOLEM_APP=${GOLEM_APP:-golemapp}
exec python /work/golem/${GOLEM_APP}.py -d /work/config $@

