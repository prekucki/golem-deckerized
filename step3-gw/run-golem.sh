#! /bin/bash

info() {
	echo $@ >&2
}

if test -c /dev/fuse
then
	info Priviliged mode: starting dockerd
	/usr/bin/dockerd &
	sleep 5
elif test -S /var/run/docker.sock 
then
	info Docker passthrough
	docker version >/dev/null || exit 1
else
	info "Docker in docker required!"
	info "run container with:"
	info "docker run -v /var/run/docker.sock:/var/run/docker.sock ..."
	info " or "
	info "docker run --privileged ..."
	info ""
	exit 1
fi

source /work/venv/bin/activate
cd /work/golem
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

echo params: $@
GOLEM_APP=${GOLEM_APP:-golemapp}
exec python /work/golem/${GOLEM_APP}.py -d /work/config $@

