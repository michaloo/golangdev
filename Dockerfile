FROM ubuntu:12.04

WORKDIR /root
ENV HOME /root

RUN echo "deb http://ppa.launchpad.net/duh/golang/ubuntu precise main" >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 60480472 && \
    apt-get update && \
    apt-get install golang curl bzr git -y && \
    apt-get clean

ENV GOROOT /usr/lib/go
ENV GOPATH /root/go
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

VOLUME /root

ENTRYPOINT ["/bin/bash"]

