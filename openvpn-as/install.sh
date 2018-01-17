wget http://swupdate.openvpn.org/as/openvpn-as-2.1.12-Ubuntu16.amd_64.deb
chmod +x openvpn-as-2.1.12-Ubuntu16.amd_64.deb
dpkg -i ./openvpn-as-2.1.12-Ubuntu16.amd_64.deb

echo "Show The GUI

> sudo /usr/local/openvpn_as/bin/ovpn-init

When you get to the section:

Please specify the network interface and IP address to be
used by the Admin Web UI:
(1) all interfaces: 0.0.0.0
(2) eth0: YOURPUBLICIP
(3) eth0: 10.10.0.8
you should select 1


===> add user, using the follow command
useradd USERNAME
passwd PASSWORD

"

