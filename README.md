## openvpn-install
OpenVPN [road warrior](http://en.wikipedia.org/wiki/Road_warrior_%28computing%29) installer for Debian, Ubuntu and CentOS.

This script will let you setup your own VPN server in no more than a minute, even if you haven't used OpenVPN before. It has been designed to be as unobtrusive and universal as possible.

### Installation
Run the script and follow the assistant:

1) run the IPV4 enabler first
2) run the openvn-installer

Once it ends, you can run it again to add more users, remove some of them or even completely uninstall OpenVPN.

3) run the ip tables fixer

also be sure to remove the below lines from (/etc/openvpn/server.conf) to prevent routing all traffic through OpenVPN server

push "redirect-gateway def1 bypass-dhcp"
push "dhcp-option DNS 10.0.0.2"

also add the below line to /etc/openvpn/server.conf to push the route to VPC instances to the clients ( change the IP address accoring to VPC Network)

push "route 10.0.0.0 255.255.0.0"

### I want to run my own VPN but don't have a server for that
You can get a little VPS for just $2.99/month at [Bandwagon Host](https://bandwagonhost.com/aff.php?aff=575&pid=43).

### Donations

If you want to show your appreciation, you can donate via [PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=VBAYDL34Z7J6L) or [Bitcoin](https://pastebin.com/raw/M2JJpQpC). Thanks!
