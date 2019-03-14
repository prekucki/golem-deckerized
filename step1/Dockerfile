FROM ubuntu
RUN apt-get update && apt-get install -y git python3 python3-venv
RUN mkdir /work && cd work && python3 -m venv /work/venv
RUN apt-get -y install openssl python3-dev libffi-dev pkg-config libjpeg-dev \
    libopenexr-dev libssl-dev autoconf libgmp-dev \
    libfreeimage-dev libtool python3-netifaces python3-psutil build-essential \
    python3-pip rustc cargo
RUN apt-get -y install docker.io curl
RUN cd /usr/local/bin && curl -L 'https://github.com/golemfactory/golem-hyperdrive/releases/download/v0.2.10/hyperg_0.2.10_linux-x64.tar.gz' | tar xvz --strip-components=1
ENV PATH="/usr/local/bin:${PATH}"
RUN cd /work/ && git clone https://github.com/golemfactory/golem.git -b develop
ARG GIT_BRANCH=$GIT_BRANCH
RUN cd /work/golem && git fetch && git checkout $GIT_BRANCH
RUN (. /work/venv/bin/activate && pip install --upgrade pip)
RUN (. /work/venv/bin/activate && pip install -r /work/golem/requirements.txt)

