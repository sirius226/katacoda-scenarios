Let's create a configmap to store some key value pairs as configs:

`kubectl create configmap demo-config -n demo --from-literal=env=test --from-literal=foo=bar`{{execute}}

Verify the configmap succeessfully created:

`kubectl get configmap demo-config -n demo -o yaml`{{execute}}

Then let's create a secret to store some credentials:

`kubectl create secret generic demo-secret -n demo --from-literal secret=123 --from-literal password=abc`{{execute}}

Verify the configmap succeessfully created:

`kubectl get secret demo-secret -n demo -o yaml`{{execute}}

Base 64 decode the secret data:

`echo "MTIz" | base64 -d`{{execute}}

Now we can deploy deployment and service for **auth**

`kubectl apply -f kubernetes/deployments/auth.yaml`{{execute}}

`kubectl apply -f kubernetes/services/auth.yaml`{{execute}}

```
curl -X POST \
  http://my.demo.com/auth \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Postman-Token: d5965f17-71fc-4e15-9354-71e916c8e593' \
  -H 'cache-control: no-cache' \
  -d secret=123
```{{execute}}

```
curl -X POST \
  http://my.demo.com/auth \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Postman-Token: d5965f17-71fc-4e15-9354-71e916c8e593' \
  -H 'cache-control: no-cache' \
  -d secret=321
```{{execute}}

