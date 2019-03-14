FROM golem-dockerized:step2
VOLUME /var/lib/docker /work/config
COPY run-golem.sh /work/
COPY golemcli /usr/local/bin/
EXPOSE 40102 40103 3282 55001 55011
ENTRYPOINT [ "/work/run-golem.sh" ]
CMD []
