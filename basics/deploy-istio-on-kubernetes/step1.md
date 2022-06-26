This scenario uses a two-node Kubernetes cluster with one master and one node. To validate you can run the following commands:

`kubectl cluster-info && kubectl get nodes -o wide`{{exec}}

<br>

### Install Istioctl and Deploy Istio Core Component

1. Install `istioctl`.

`export ISTIO_VERSION=1.13.3`{{exec}}

`curl -L https://istio.io/downloadIstio | TARGET_ARCH=x86_64 sh - && echo "export PATH=/root/istio-${ISTIO_VERSION}/bin:\$PATH" >> .plainrc && export PATH=/root/istio-${ISTIO_VERSION}/bin:$PATH`{{exec}}

2. Hmmm, does the installation succedded? Let's check with this command `istioctl version`{{exec}}.

3. Let's then apply all istio manifest using `istioctl`.

`mv /tmp/demo.yaml /root/istio-${ISTIO_VERSION}/manifests/profiles/ && istioctl install --set profile=demo -y --manifests=/root/istio-${ISTIO_VERSION}/manifests`{{exec}}


This will deploy Pilot, Mixer, Ingress-Controller, and Egress-Controller, and the Istio CA (Certificate Authority). These are explained in the next step.

### Check Status

All the services are deployed as Pods. Once they're running, Istio is correctly deployed.

`kubectl get pods,services -n istio-system`{{exec}}

<br>

Having a issues with the installation? Refer to [Istio Installation Guide](https://istio.io/latest/docs/setup/install/istioctl/).
