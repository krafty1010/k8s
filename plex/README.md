# Plex
DNLA uses UDP which in turn rquires host network
## Setup


### troubleshoot

```
kubectl exec -it -n media plex-568747b9c7-4n6sb -- curl http://localhost:32400
```

scp user@hostname:/home/user/.kube/config ~/.kube/config

/dev/sda1  /mnt/ext1  ext4  defaults,noatime  0  2

### NFS

helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/
helm install nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
    --set nfs.server=10.10.0.x \
    --set nfs.path=//mnt/mnt/folder

kubectl patch storageclass nfs-client -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}' && kubectl patch storageclass local-path -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"false"}}}'


