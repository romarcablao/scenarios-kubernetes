In this section we will work with container images.

Lets list all containers that exist on the local system:

docker image ls
Now, pull some additional images from the Docker Hub:

```plain
docker image pull nginx
docker image pull busybox
docker image pull busybox:1.28
docker image pull ubuntu:18.04
```{{exec}}

<br>

Run the following command to see how much space the images are taking:

`docker system df`{{exec}}

`docker image ls`{{exec}}

```plain
docker image rmi busybox:latest
docker image rmi alpine:latest
docker image rmi ubuntu:18.04
docker image ls
```{{exec}}

Running the `docker system df`{{exec}} command shows us that we have freed up space by removing images.