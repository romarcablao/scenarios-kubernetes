The Kubernetes scheduler automatically assigns pods to nodes, however there are times where you need more control over where the scheduler assigns pods. For example, you need to schedule a pod to a certain machine that has an SSD attached to it.

There are different ways to achive this, using: `nodeSelector`, `Affinity` and `Anti-Affinity`, which all use [Labels and Selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/).

In this scenario, we'll be covering how to assign pods to nodes using `nodeSelector`. For further reading, check out [Assigning Pods to Nodes](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/).
