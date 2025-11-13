# transmission-openvpn

## Requirements
NFS export

## Setup
Confifgure variables in configmap

## troubleshoot
Workaround for tun errors is to create tun device on node
```
sudo mkdir -p /dev/net
sudo mknod /dev/net/tun c 10 200
sudo chmod 600 /dev/net/tun
```

Workaround for pod hangs at 'Applying permissions to transmission directories'

Check NFS export settings are optimised for async

## to-do