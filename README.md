## Requirements

* A working install of pi-hole
* Docker (I used Docker version 20.10.2, build 2291f61)
* Some [syslinux binaries](https://wiki.syslinux.org/wiki/index.php?title=Download)

add the 99-pxe.conf file to /etc/dnsmasq.d/ on the pihole.  
sudo dhcping -V -s 192.168.1.97:67

