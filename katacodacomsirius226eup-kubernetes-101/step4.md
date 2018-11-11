Check if service **hello** working:

`kubectl get pods -n demo | grep hello`{{execute}}

`kubectl exec -n demo -it <your pod name> bash`

`curl http://127.0.0.1:8080/hello/sirius226`{{execute}}

Let's see if we can find any clue from logs:

`kubectl logs -n demo <your pod name>`

Deploy the service **name** and try again:

`kubectl apply -f kubernetes/services/name.yaml`{{execute}}

Let's deploy other 2 services:

`kubectl apply -f kubernetes/services/hello.yaml`{{execute}}

`kubectl apply -f kubernetes/services/bye.yaml`{{execute}}

`kubectl apply -f kubernetes/services/auth.yaml`{{execute}}

`kubectl get services -n demo -w`{{execute}}

Also we can try access the service by ClusterIP:
`curl http://<your cluster ip for bye>/bye/sirius226`


