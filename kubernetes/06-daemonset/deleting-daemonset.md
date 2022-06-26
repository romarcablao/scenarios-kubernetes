Clean up our workspace:

`kubectl delete daemonset nginx -n development`{{execute}}

Alternatively, we could use the short hand, which achieves the same result:

`kubectl delete ds nginx -n development`{{execute}}

Success - you've deleted the DaemonSet. Check for pods:

`kubectl get pods -n development`{{execute}}

Great! You're all done.