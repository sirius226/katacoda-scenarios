1. Let's check our demo kubernetes cluster:

    List nodes in the demo cluster:

    `kubectl get nodes`{{execute}}

    Get information about node **master**:

    `kubectl describe node master`{{execute}}

    List namespaces in the demo cluster:

    `kubectl get namespaces`{{execute}}

    Get services in namespace **kube-system**:

    `kubectl get services -n kube-system`{{execute}}

2. Next, we will create our own namespace for demo applications: 

    Create a namespace **demo**:

    `kubectl create namespace demo`{{execute}}

    `kubectl get all -n demo`{{execute}}

