FROM ubuntu:18.04
RUN apt-get -qq update 
RUN apt-get -qq -y upgrade
RUN apt-get -qq -y install stuntman-client
RUN apt-get -qq -y autoremove && \
    apt-get -qq -y clean && rm -rf /var/lib/apt/lists/*
ENTRYPOINT [ "/usr/bin/stunclient" ]
CMD [ "--help" ]