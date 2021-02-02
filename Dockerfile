FROM alpine:3.12
LABEL maintainer "Jacob Burns <jacobwburns@protonmail.com>"
ENV LANG='en_US.UTF-8' \
    LANGUAGE='en_US.UTF-8' \
    TERM='xterm' 

### Install Application
RUN apk upgrade --no-cache && \
    apk add --no-cache --virtual=run-deps \
      su-exec \
      dnsmasq && \
    rm -rf /tmp/* \
           /var/cache/apk/*  \
           /var/tmp/*
EXPOSE 67/udp
ENTRYPOINT ["dnsmasq", "-k", "--dhcp-broadcast"]	

