echo "nameserver 8.8.8.8" > /etc/resolv.conf
echo "nameserver 1.1.1.1" >> /etc/resolv.conf
dnsmasq --bind-interfaces --cache-size=1500 --dns-forward-max=2048 --no-daemon --expand-hosts --domain=poc
