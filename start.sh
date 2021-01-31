#!/bin/bash
docker run --rm --name=dnsmasq --cap-add=NET_ADMIN \
  -it \
  -v /etc/localtime:/etc/localtime:ro \
  -v /home/pi/dnsmasq_docker/dnsmasq.conf:/etc/dnsmasq.conf \
  --net host \
  373814265829
