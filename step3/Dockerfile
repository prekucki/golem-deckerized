FROM golem-deckerized:step2
CMD /bin/bash
VOLUME /var/lib/docker /work/config
COPY run-golem.sh /work/
ENTRYPOINT [ "/work/run-golem.sh" ]
CMD "--help"


