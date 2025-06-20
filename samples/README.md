# 1. Is the HTTPS listener up?
istioctl proxy-config listeners $(kubectl -n istio-ingress get pods -l istio=ingressgateway -o jsonpath='{.items[0].metadata.name}') -n istio-ingress | grep 0.0.0.0:443

# 2. Does the secret exist in the right namespace?
kubectl -n istio-ingress get secret project-user-tls

# 3. Does the route appear in the ingress proxy?
istioctl proxy-config route <ingress-gateway-pod> -n istio-ingress | grep user-kafka-ui