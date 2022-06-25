In this scenario, we're going to create an `nginx` DaemonSet. Initially, we'll run this on our worker nodes `(node01)`, but then we will manipulate the DaemonSet to get it to run on the master node too.

### nginx DaemonSet

In your terminal, you'll see a file named `nginx-daemonset.yaml`. This is the DaemonSet which we will be using to run `nginx` across both of our nodes.

First, let's create all the prerequisites needed for this DaemonSet to run:

`kubectl create -f nginx-ds-prereqs.yaml`{{execute}}

Now we've created the namespace (and other prerequisites), let's inspect the manifest for the `nginx` DaemonSet:

`cat nginx-daemonset.yaml; echo`{{execute}}

As you can see, we're running a basic DaemonSet - in the `contino` namespace - which exposes port `80` inside the container.

Create it:

`kubectl create -f nginx-daemonset.yaml`{{execute}}

Now check the status of the DaemonSet:

`kubectl get daemonsets -n contino`{{execute}}
