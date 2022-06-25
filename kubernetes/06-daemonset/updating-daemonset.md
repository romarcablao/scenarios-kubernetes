As mentioned in the previous chapter, workload isn't scheduled to master nodes unless specificaly tainted. In this scenario, we want to run the `nginx` DaemonSet across both `master` and `node01`. 

We need to update the DaemonSet, so we're going to use the `nginx-daemonset-tolerations.yaml` file to replace the manifest.

First, let's see what we added to the `-tolerations.yaml` file:

`cat nginx-daemonset-tolerations.yaml; echo`{{execute}}

As you can see, we've added the following to the `spec` section:

```
tolerations:
- key: node-role.kubernetes.io/master
  effect: NoSchedule
```

This is what manifests need to be tainted with in order to be ran on master nodes. Proceed to update the DaemonSet:

`kubectl replace -f nginx-daemonset-tolerations.yaml`{{execute}}

Now check to see if an additional pod has been created. Remember - a DaemonSet schedules a pod to every node, so there should be two pods created:

`kubectl get po -n contino -l app=nginx -o wide`{{execute}}

If there's two pods - great. That means that the tolerations have worked and we are now running across two nodes.

## Accessing the pod on the master node

Find the pod IP address for the newly created pod on the master node:

`kubectl get po -n contino -l app=nginx -o 'jsonpath={.items[1].status.podIP}'; echo`{{execute}}

Notice that it's different to the IP address that we curl'ed before.

Now curl the new pod's IP address:

```
curl `kubectl get po -n contino -l app=nginx -o 'jsonpath={.items[1].status.podIP}'`
```{{execute}}

You should see a similar result to the one in the previous chapter:

`This request was processed by host: nginx-njq9h`
