Let's then apply all istio manifest using `istioctl`.  
This will deploy Pilot, Mixer, Ingress-Controller, and Egress-Controller, and the Istio CA (Certificate Authority). These are explained in the next step.

```plain
mv /tmp/istio-course.yaml /root/istio-${ISTIO_VERSION}/manifests/profiles/
istioctl install --set profile=istio-course -y --manifests=/root/istio-${ISTIO_VERSION}/manifests
```{{exec}}

<br>

## Check Status

All the services are deployed as Pods. Once they're running, Istio is correctly deployed.

`kubectl get pods,services -n istio-system`{{exec}}

<br>

Having a issues with the installation? Refer to [Istio Installation Guide](https://istio.io/latest/docs/setup/install/istioctl/).
