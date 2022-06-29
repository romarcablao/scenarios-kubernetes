## Quick Example

Create a directory named learn-terraform-docker-container.

`mkdir learn-terraform-docker-container && cd learn-terraform-docker-container`{{exec}}

<br>

```
cat <<EOF > main.tf
terraform {
  required_providers {
    docker = {
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "tutorial"
  ports {
    internal = 80
    external = 8000
  }
}

```{{exec}}

<br>

Initialize the project, which downloads a plugin that allows Terraform to interact with Docker.  

`terraform init`{{exec}}

<br>

Provision the NGINX server container with apply. When Terraform asks you to confirm type yes and press ENTER.  

`terraform apply`{{exec}}

<br>

## Verify
Verify the existence of the NGINX container by visiting localhost:8000 in your web browser or running docker ps to see the container or running `curl localhost:8000`{{exec}}

<br>

`docker ps`{{exec}}

## Cleanup
To stop the container, run `terraform destroy`{{exec}}.
