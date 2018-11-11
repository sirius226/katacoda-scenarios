Let's create a configmap to store some key value pairs as configs:

`kubectl create configmap demo-config -n demo --from-literal=env=test --from-literal=foo=bar`

Verify the configmap succeessfully created:

`kubectl get configmap demo-config -n demo -o yaml`

Then let's create a secret to store some credentials:

`kubectl create secret generic demo-secret -n demo --from-literal secret=123 --from-literal password=abc`

Verify the configmap succeessfully created:

`kubectl get secret demo-secret -n demo -o yaml`

Base 64 decode the secret data:

`echo "MTIz" | base64 -d`

