This cluster has a broken manually launched deployment.

1. Fix the `fix-me` pod. You may check the image tags available in [DockerHub](https://hub.docker.com/_/nginx?tab=tags).

<br>

2. There are two (2) manifest files in `/manifests`. Update these manifests and apply in the cluster.
- `cat nginx-deployment.yml;echo`{{execute}}
- `cat clusterip-service.yml;echo`{{execute}}