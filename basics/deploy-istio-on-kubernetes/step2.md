An Istio service mesh is logically split into a data plane and a control plane.

> The data plane is composed of a set of intelligent proxies (Envoy) deployed as sidecars. These proxies mediate and control all network communication between microservices along with Mixer, a general-purpose policy and telemetry hub.  

> The control plane manages and configures the proxies to route traffic. Additionally, the control plane configures Mixers to enforce policies and collect telemetry.  

![Istio Architecture](./assets/istio-arch.svg)

## Components

* **Envoy** - Sidecar proxies per microservice to handle ingress/egress traffic between services in the cluster and from a service to external services. The proxies form a secure microservice mesh providing a rich set of functions like discovery, rich layer-7 routing, circuit breakers, policy enforcement and telemetry recording/reporting functions.

* **Pilot** - Pilot provides service discovery for the Envoy sidecars, traffic management capabilities for intelligent routing (e.g., A/B tests, canary rollouts, etc.), and resiliency (timeouts, retries, circuit breakers, etc.).

* **Mixer** - Create a portability layer on top of infrastructure backends. Enforce policies such as ACLs, rate limits, quotas, authentication, request tracing and telemetry collection at an infrastructure level.

* **Ingress/Egress** - Configure path based routing.

* **Istio CA** - Secures service to service communication over TLS. Providing a key management system to automate key and certificate generation, distribution, rotation, and revocation
