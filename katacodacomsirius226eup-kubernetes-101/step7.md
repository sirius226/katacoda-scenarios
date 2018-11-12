Let's try update the yaml:

`vim kubernetes/deployments/name.yaml`{{execute}}

Change replica to `3`, and image tag to `2.0`.

Deploy the new deployment:

`kubectl apply -f kubernetes/deployments/name.yaml`{{execute}}

`kubectl get pods -n demo -w`{{execute}}

`kubectl get deployment name-deployment -n demo`{{execute}}

`curl http://my.demo.com/hello/sirius226`{{execute}}

Roll back to previous revision:

`kubectl rollout undo deployment name-deployment -n demo --to-revision=1`{{execute}}

`curl http://my.demo.com/hello/sirius226`{{execute}}

Check what happens for the deployment:

`kubectl describe deployment name-deployment -n demo`{{execute}}

Scale up and down deployment:

`kubectl scale --replicas=5 deployment name-deployment -n demo`{{execute}}

`kubectl get deployment name-deployment -n demo -w`{{execute}}
