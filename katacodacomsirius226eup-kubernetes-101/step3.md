Now let's deploy our first application `Name` to Kubernetes:

Create a deployment for application **name**

`kubectl apply -f kubernetes/deployments/name.yaml`{{execute}}

Check the status of our deployed application:

`kubectl get pods -n demo -w`{{execute}}

`kubectl get deployment -n demo`{{execute}}

Let's 'ssh' to one of the pod to verify it is working:

`kubectl exec -n demo -it <your pod name> bash`

`curl http://127.0.0.1:8080/name/sirius226`{{execute}}

Check the logs for this pod:

`kubectl logs -f -n demo <your pod name>`

Let's deploy other 2 applications:

`kubectl apply -f kubernetes/deployments/hello.yaml`{{execute}}

`kubectl apply -f kubernetes/deployments/bye.yaml`{{execute}}

`kubectl get deployment -n demo -w`{{execute}}