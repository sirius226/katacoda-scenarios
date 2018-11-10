launch.sh
sleep 20
helm init
helm install stable/traefik --namespace kube-system