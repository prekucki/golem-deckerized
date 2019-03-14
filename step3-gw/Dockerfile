FROM golem-deckerized:step2
VOLUME /var/lib/docker /work/config
COPY run-golem.sh /work/
COPY golemcli /usr/local/bin/
EXPOSE 40102 40103 3282
ENTRYPOINT [ "/work/run-golem.sh" ]
CMD []
