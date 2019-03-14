#!/bin/bash
service docker start
. /work/venv/bin/activate
cd /work/golem && python setup.py develop
cd /work/golem/rust/golem && cargo clean

rm -fr ~/.cargo
