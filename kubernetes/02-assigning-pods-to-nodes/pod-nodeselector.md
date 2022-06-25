[`nodeSelector`](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#nodeselector) is a selector which allows you to assign a pod to a specific node. It matches a node key/value pair, also known as a _Label_, which tells the Kubernetes scheduler which node to schedule the pod to.

If the label specified as `nodeSelector` doesn't exist on any node, then the pod will fail to be scheduled. If we still want to schedule our pod (even though the label doesn't exist on a node), we need to use `Node/Pod affinity` and `Anti-affinity`. We will cover and discuss this later in this scenario.

>**Note:** By default, Kubernetes adds labels to nodes such as `kubernetes.io/hostname`, `beta.kubernetes.io/arch` and so on. For further information, read [Built-in node labels](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#interlude-built-in-node-labels) in the Kubernetes documenation.

In the following section we will schedule the `happypanda` pod to the `node01` node by using nodeSelector(disk=ssd).

### Discover node labels

First of all, let's look at the current node labels:

`kubectl get nodes --show-labels`{{execute}}

### Add a new node label

Now, add the label `disk=ssd` to the `node01` node:

`kubectl label nodes node01 disk=ssd`{{execute}}

Ensure the label we've just created has been added to `node01`:

`kubectl get nodes --show-labels`{{execute}}

### Assign the `happypanda` pod to node01, matching `disk:ssd` label

Check the file `pod-nodeselector.yaml`:

`cat /manifests/pod-nodeselector.yaml`{{execute}}

Notice that `nodeSelector` is matching the label we just added to the node - `disk:ssd`. The Kubernetes scheduler will use this label to try and schedule pods onto a node with the label.

Next, we will create the `happypanda` pod by running the following command:

`kubectl apply -f /manifests/pod-nodeselector.yaml`{{execute}}

### Let's verify

Check that `happypanda` has been successfully scheduled on the `node01` node:

`kubectl get pods -o wide`{{execute}}

### Deleting happypanda pod and label

Delete `happypanda` pod:

`kubectl delete -f /manifests/pod-nodeselector.yaml`{{execute}} 

or 

`kubectl delete pod happypanda`{{execute}}

Remove label from node01:

`kubectl label node node01 disk-`{{execute}}
