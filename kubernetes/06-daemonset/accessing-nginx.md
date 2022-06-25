Now that we've created our `nginx` DaemonSet, let's see what host it's running on:

`kubectl get po -n contino -l app=nginx -o 'jsonpath={.items[0].spec.nodeName}'; echo`{{execute}}

Notice that it's running on `node01` and not `master`. By default, Kubernetes won't schedule any workload to master nodes unless they're tainted. Essentially, what this means is that workload has to be specifically set to be ran on master nodes.

It's not best practice to run 'normal' workload on master nodes, as it's where `etcd` and other crucial Kubernetes components reside. However, it's acceptable to run workload such as log collection and node monitoring daemons on master nodes as you want to understand what's happening on those nodes.

## Testing the Webserver

We want to get the IP address for the pod so we can test that it's working, now that we know which node it's running on:

`kubectl get po -n contino -l app=nginx -o 'jsonpath={.items[0].status.podIP}'; echo`{{execute}}

Curl it:

```
curl `kubectl get po -n contino -l app=nginx -o 'jsonpath={.items[0].status.podIP}'`
```{{execute}}

You should see a result like:

`This request was processed by host: nginx-8n2qj`