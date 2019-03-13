#! /bin/bash
/usr/bin/dockerd &
sleep 5

source /work/venv/bin/activate
cd /work
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

echo params: $@
docker images golemfactory/base:1.2

exec python /work/golem/golemapp.py -d /work/config $@

