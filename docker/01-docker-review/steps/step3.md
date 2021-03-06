The below commands will work with images to create and list containers.

Take inventory of current images and containers  
- `docker image ls`{{exec}}  
- `docker container ls`{{exec}}

Run hello-world image `docker container run hello-world`{{exec}} Notice how the image did not need to be downloaded since we already downloaded it in step 2.

What if we delete hello-world image from the local machine? `docker image rmi -f hello-world`{{exec}}.


Look at the running containers `docker container ls`{{exec}} The hello-world container is not listed because it ran to completion.

Look at all containers including stopped `docker container ls -a`{{exec}} Now we see hello-world listed as a stopped container and is named "hello-world" because we defined that container name at runtime.

Display all information about a container. In this case, let's inspect hello-world. `docker container inspect hello-world`{{exec}} This command displays extensive information about the container. Take some time to look it over.

Some other container commands:
- List running containers `docker container ps`{{exec}}
- List all containers `docker container ps -a`{{exec}}
- List most recent 2 containers `docker container ps -n 2`{{exec}}
- List the last container run `docker container ps -l`{{exec}}