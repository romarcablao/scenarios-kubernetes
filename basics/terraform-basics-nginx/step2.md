## Quick Example

Create a directory named learn-terraform-docker-container.

`mkdir learn-terraform-docker-container && cd learn-terraform-docker-container`{{exec}}

<br>

```
cat <<EOF > main.tf
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
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
EOF
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

## Conclusion

You have now created and destroyed your first Terraform resources! Terraform supports hundreds of ecosystem providers, from major cloud resources to content delivery networks and more.

Continue learning at [HashiCorp Learn](https://learn.hashicorp.com/terraform) and the [Terraform API documentation](https://www.terraform.io/) or discuss with others on the [Terraform forum](https://discuss.hashicorp.com/c/terraform-core/27).
