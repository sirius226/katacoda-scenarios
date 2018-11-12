Checkout to helm branch:

`git checkout kubernetes/deployments/name.yaml`{{execute}}

`git checkout helm`{{execute}}

Run helm template:

`helm template kubernetes -f kubernetes/roles/hello.yaml`{{execute}}

`helm template kubernetes -f kubernetes/roles/hello.yaml | kubectl apply --record -f -`{{execute}}

`kubectl -n demo rollout status deploy/hello-deployment`{{execute}}
