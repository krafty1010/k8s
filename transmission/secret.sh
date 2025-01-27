kubectl create secret generic openvpn \
    --from-literal='username=foo' \
    --from-literal='password=bar' \
    --namespace media