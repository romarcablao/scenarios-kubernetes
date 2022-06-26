This scenario uses a two-node Kubernetes cluster with one master and one node. To validate you can run the following commands:

```plain
kubectl cluster-info
kubectl get nodes -o wide
```{{exec}}

<br>

### Install Istioctl and Deploy Istio Core Component

To continue, we need to install `istioctl`.

```plain
export ISTIO_VERSION=1.13.3
curl -L https://istio.io/downloadIstio | TARGET_ARCH=x86_64 sh -
echo "export PATH=/root/istio-${ISTIO_VERSION}/bin:\$PATH" >> .bashrc
export PATH=/root/istio-${ISTIO_VERSION}/bin:$PATH
```{{exec}}

Hmmm, does the installation succedded? Let's check with this command `istioctl version`{{exec}}.

Let's then apply all istio manifest using `istioctl`.

```plain
mv /tmp/demo.yaml /root/istio-${ISTIO_VERSION}/manifests/profiles/
istioctl install --set profile=demo -y --manifests=/root/istio-${ISTIO_VERSION}/manifests
```{{exec}}
