Check ingress extenal ip:

`kubectl get svc demo-traefik -n default`{{execute}}

EXTERNAL-IP is the IP for your ingress:
`curl <your EXTERNAL-IP>` you should see `404 page not found`

`echo '<your EXTERNAL-IP> my.demo.com' >> /etc/hosts`

Deploy our ingrss rules:

`kubectl apply -f kubernetes/ingress/demo.yaml`{{execute}}

`curl http://my.demo.com/hello/chen`{{execute}}

`curl http://my.demo.com/bye/chen`{{execute}}
