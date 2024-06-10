This scenario uses a two-node Kubernetes cluster with one master and one node. To validate you can run the following commands:

```plain
kubectl cluster-info
kubectl get nodes -o wide
```{{exec}}

<br>

Helm is already installed. But let's check the version with this command `helm version`{{exec}}.

<br>

Lets add a repository and update

```plain
helm repo add thecloudspark https://thecloudspark.github.io/helm-charts
helm repo update
```{{exec}}

<br>

Before we install the chart, lets take a quick look at the `values.yaml`.

```plain
cat values.yaml
```{{exec}}

<br>

As you may see, we use service of type `NodePort` and specify ports per workloads. Now install the chart and apply overrides from `values.yaml`

```plain
helm install app -f values.yaml thecloudspark/vote-app --version 1.0.5
```{{exec}}

<br>

Wait until all pods are running
```plain
kubectl get pods -w
```{{exec}}

<br>

Click [Vote]({{TRAFFIC_HOST1_31000}}) to access the vote UI.

Click [Result]({{TRAFFIC_HOST1_31001}}) to access the results UI.
