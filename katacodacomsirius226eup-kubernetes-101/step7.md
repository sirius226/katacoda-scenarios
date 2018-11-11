Let's try update the yaml:

`vim kubernetes/deployments/name.yaml`{{execute}}

Change replica to `3`, and image tag to `2.0`.

Deploy the new deployment:

`kubectl apply -f kubernetes/deployments/name.yaml`

`kubectl get pods -n demo -w`

`kubectl get deployment name-deployment -n demo`

`curl http://my.demo.com/hello/sirius226`

Scale up and down deployment:

`kubectl scale --replicas=5 deployment/name-deployment -n demo`
