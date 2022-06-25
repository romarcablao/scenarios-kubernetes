## Overview

A `Service` is an abstraction in kubernetes that allows you to connect to pods, it provides two main functionalities service-discovery and load-balancing.

Some typical uses of a Service are:

- provide an endpoint to connect to an application, such as an nginx webserver
- create a load-balancer that will distribute traffic to pods
- create an external endpoint to a service outside of the cluster for example an RDS database

There are multiple types of services:

- NodePort that exposes a port on all the nodes
- LoadBalancer that create a loadbalancer depending on your environment
- ClusterIP which creates a dedicated IP which can usually be only access inside of the cluster
