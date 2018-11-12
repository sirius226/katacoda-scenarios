Checkout to helm branch:

`git checkout helm`{{execute}}

Run helm template:

`helm template kubernetes -f kubernetes/roles/hello.yaml`{{execute}}

`helm template kubernetes -f kubernetes/roles/hello.yaml | kubectl --cluster $cluster --namespace $namespace apply --record -f -`{{execute}}

`kubectl -n demo rollout status deploy/hello-deployment`{{execute}}

