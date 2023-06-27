To stop the registry, use the same docker container stop command as with any other container.

`docker container stop registry`{{exec}}

<br>

To remove the container, use docker container rm.

`docker container stop registry && docker container rm -v registry`{{exec}}