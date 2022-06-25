Clean up our workspace:

`kubectl delete daemonset nginx -n contino`{{execute}}

Alternatively, we could use the short hand, which achieves the same result:

`kubectl delete ds nginx -n contino`{{execute}}

Success - you've deleted the DaemonSet. Check for pods:

`kubectl get pods -n contino`{{execute}}

Great! You're all done.