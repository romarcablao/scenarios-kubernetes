The below commands will let you work with images.

List images `docker image ls`{{exec}}

Pull hello-world image from the container image registry (in this case, Docker Hub) `docker image pull hello-world`{{exec}}

Pull the latest Alpine image from the container image registry `docker image pull alpine:latest`{{exec}}

List images on the local machine `docker image ls`{{exec}}

Remove images stored locally `docker image rmi alpine:latest`{{exec}}

List images again. Note that Alpine is no longer listed `docker image ls`{{exec}}