launch.sh
helm init
sleep 120
kubectl apply -f ~/cloudprovider.yaml
sleep 10
helm install stable/traefik -n demo