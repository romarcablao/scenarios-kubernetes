This scenario uses a two-node Kubernetes cluster with one master and one node. To validate you can run the following commands:

```plain
kubectl cluster-info
kubectl get nodes -o wide
```{{exec}}

<br>

## Install Istioctl
First lets install `istioctl`. The commands below are in the [Official Docs](https://istio.io/latest/docs/setup/getting-started).

```plain
export ISTIO_VERSION=1.13.3
curl -L https://istio.io/downloadIstio | TARGET_ARCH=x86_64 sh -
echo "export PATH=/root/istio-${ISTIO_VERSION}/bin:\$PATH" >> .plainrc
export PATH=/root/istio-${ISTIO_VERSION}/bin:$PATH
```{{exec}}

Hmmm, does the installation succedded? Let's check with this command `istioctl version`{{exec}}.

<br>

## Deploy Istio Core Component

Let's then apply all istio manifest using `istioctl`.  
This will deploy Pilot, Mixer, Ingress-Controller, and Egress-Controller, and the Istio CA (Certificate Authority). These are explained in the next step.

```plain
mv /tmp/demo.yaml /root/istio-${ISTIO_VERSION}/manifests/profiles/
istioctl install --set profile=demo -y --manifests=/root/istio-${ISTIO_VERSION}/manifests
```{{exec}}

<br>

## Check Status

All the services are deployed as Pods. Once they're running, Istio is correctly deployed.

`kubectl get pods,services -n istio-system`{{exec}}

<br>

Having a issues with the installation? Refer to [Istio Installation Guide](https://istio.io/latest/docs/setup/install/istioctl/).
