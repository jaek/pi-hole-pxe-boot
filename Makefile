HOSTCONFDIR=/etc/dnsmasq.d
GUESTCONFDIR=/opt/dnsmasq-proxy

image: Dockerfile
	docker build -t dnsmasq-proxy .

install-config: 99-pxe.conf dnsmasq.conf image
	cp 99-pxe.conf $(HOSTCONFDIR) && mkdir -p $(GUESTCONFDIR) && cp dnsmasq.conf $(GUESTCONFDIR)/dnsmasq.conf

install-service: dnsmasqproxy.service install-config
	cp dnsmasqproxy.service /etc/systemd/system/dnsmasqproxy.service && systemctl daemon-reload

remove: 
	rm $(HOSTCONFDIR)/99-pxe.conf && rm -rf $(GUESTCONFDIR)

