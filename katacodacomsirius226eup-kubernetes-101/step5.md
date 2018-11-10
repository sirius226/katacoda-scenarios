Install Traefik:

`kubectl apply -f ~/cloudprovider.yaml`{{execute}}

`helm install stable/traefik -n demo`{{execute}}

`kubectl get svc kube-system-traefik --namespace default -w`{{execute}}

EXTERNAL-IP is the IP for your ingress:
`curl <your EXTERNAL-IP>` you should see `404 page not found`

`echo '<your EXTERNAL-IP> my.demo.com' >> /etc/hosts`

Deploy our ingrss rules:

`kubectl apply -f kubernetes/ingress/demo.yaml`{{execute}}

`curl http://my.demo.com/hello/sirius226`{{execute}}

`curl http://my.demo.com/bye/sirius226`{{execute}}
