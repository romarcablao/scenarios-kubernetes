We will now run containers in an interactive way. We will also explore immutability.

Create a container using the Ubuntu 16.04 image and connect to the terminal `docker run -it ubuntu:16.04 bash`{{exec}}
This command runs the container, attaches to standard input stream, and get a pseudo-terminal. For the container process, we specify bash to get the terminal.

Create a file using the touch command: `touch test && ls`{{exec}}

You should see the file created in the root directory of the container. Now exit: `exit`{{exec}}

Run the container once again: `docker run -it ubuntu:16.04 ls`{{exec}}

Notice that the file is gone. This is because each time use the run command against an image, it creates a new container from the image. Any changes made to a container based on an image are not automatically saved back to the image.

This is know as immutability. This is on of the key principles of containers, they are immutable. Once built, it’s unchangeable, and if you want to make changes, you will get a new image as a result.