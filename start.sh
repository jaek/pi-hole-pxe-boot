#!/bin/bash

docker run -d --rm --name=dnsmasq --cap-add=NET_ADMIN \
  -v /etc/localtime:/etc/localtime:ro \
  -v $PWD/dnsmasq.conf:/etc/dnsmasq.conf \
  --net host \
  dnsmasq-pihole
