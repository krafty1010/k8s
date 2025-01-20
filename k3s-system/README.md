# Setup rasbperry OS host for K3S


udo apt update
sudo apt full-upgrade
sudo nano /etc/dphys-swapfile

### Setup cgroups

appending to existing line (do not create a new line!)

```
$ cat /boot/firmware/cmdline.txt 
console=serial0,115200 console=tty1 root=PARTUUID=c4adc3b5-02 rootfstype=ext4 fsck.repair=yes rootwait cgroup_memory=1 cgroup_enable=memory
```

#### Verify
```
$ cat /proc/cgroups
#subsys_name	hierarchy	num_cgroups	enabled
cpuset	0	95	1
cpu	0	95	1
cpuacct	0	95	1
blkio	0	95	1
memory	0	95	1
devices	0	95	1
freezer	0	95	1
net_cls	0	95	1
perf_event	0	95	1
net_prio	0	95	1
pids	0	95	1
```

### Install
```
$ sudo curl -sfL https://get.k3s.io | sh -
$ sudo systemctl status k3s
```
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.14.3/config/manifests/metallb-native.yaml

kubectl apply -f metallb.yaml

kubectl create namespace test-metallb
kubectl create deployment nginx --image=nginx -n test-metallb
kubectl expose deployment nginx --type=LoadBalancer --name=nginx --port=80 --protocol=TCP -n test-metallb
```

test http://<EXTERNAL-IP>

### ref

https://maxdon.tech/posts/k3s-raspberry-pi/


### Setup NFS

```
sudo chmod 777 ./k3s-data/ -R
sudo chown 1000:1000 ./ext1/ -R
````

#### exports
````
/mnt/ext1/dir  10.x.x.x/26(rw,no_root_squash,async,no_subtree_check,insecure)
```

#### 
````
