Copy an image from Docker Hub to your registry
You can pull an image from Docker Hub and push it to your registry. The following example pulls the nginx:latest image from Docker Hub and re-tags it as my-ubuntu, then pushes it to the local registry. Finally, the nginx:latest and my-nginx images are deleted locally and the my-nginx image is pulled from the local registry.

Pull the nginx:latest image from Docker Hub.

`docker pull nginx:latest`{{exec}}
Tag the image as localhost:5000/my-ubuntu. This creates an additional tag for the existing image. When the first part of the tag is a hostname and port, Docker interprets this as the location of a registry, when pushing.

`docker tag nginx:latest localhost:5000/my-nginx`{{exec}}

<br>

Push the image to the local registry running at localhost:5000:

`docker push localhost:5000/my-nginx`{{exec}}

<br>

Remove the locally-cached nginx:latest and localhost:5000/my-nginx images, so that you can test pulling the image from your registry. This does not remove the localhost:5000/my-nginx image from your registry.

`docker image remove nginx:latest`{{exec}}
`docker image remove localhost:5000/my-nginx`{{exec}}

<br>

Pull the localhost:5000/my-nginx image from your local registry.

`docker pull localhost:5000/my-nginx`{{exec}}