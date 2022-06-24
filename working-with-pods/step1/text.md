
> Namespaces isolate pods to separate workloads from each other and to give you the capability of setting up resource constrainsts. You can map namespaces to the different application environments you might consider.

<br>
```plain
kubectl get namespaces
```{{exec}}

<br>
By default, Kubernetes comes with a few predefined namespaces. We can see them here:

![Namespace](./assets/avatar.png)

<br>
<details><summary>Solution</summary>
<br>

```plain
k run my-pod --image=nginx:alpine
```{{exec}}

</details>
