# transmission-openvpn

## Setup
NFS export

## troubleshoot
Workaround for tun errors is to create tun device on node

```
sudo mkdir -p /dev/net
sudo mknod /dev/net/tun c 10 200
sudo chmod 600 /dev/net/tun
```
## to-do
Use secret for credentials