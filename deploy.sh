kubectl apply \
  -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.41.0/deploy/static/provider/cloud/deploy.yaml

chectl server:deploy --platform=k8s --installer=helm --domain=eclipse-che-isbur.cloud.okteto.net