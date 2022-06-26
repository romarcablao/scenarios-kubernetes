This scenario uses a two-node Kubernetes cluster with one master and one node. To validate you can run the following commands:

```bash
kubectl cluster-info
kubectl get nodes -o wide
```

<br>

### Install Istioctl and Deploy Istio Core Component

1. Install `istioctl`.

```bash
export ISTIO_VERSION=1.13.3
curl -L https://istio.io/downloadIstio | TARGET_ARCH=x86_64 sh -
echo "export PATH=/root/istio-${ISTIO_VERSION}/bin:\$PATH" >> .bashrc
export PATH=/root/istio-${ISTIO_VERSION}/bin:$PATH
```

2. Hmmm, does the installation succedded? Let's check with this command `istioctl version`.

3. Let's then apply all istio manifest using `istioctl`.

```bash
mv /tmp/demo.yaml /root/istio-${ISTIO_VERSION}/manifests/profiles/
istioctl install --set profile=demo -y --manifests=/root/istio-${ISTIO_VERSION}/manifests
```

<br>

Having a issues with the installation? Refer to [Istio Installation Guide](https://istio.io/latest/docs/setup/install/istioctl/).
