## Quick Example

Create a directory named learn-opentofu-docker-container.

`mkdir learn-opentofu-docker-container && cd learn-opentofu-docker-container`{{exec}}

<br>

```
cat <<EOF > main.tf
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:alpine3.19"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial"
  ports {
    internal = 80
    external = 8000
  }
}
EOF
```{{exec}}

<br>

Initialize the project, which downloads a plugin that allows OpenTofu to interact with Docker.  

`tofu init`{{exec}}

<br>

Provision the NGINX server container with apply. When OpenTofu asks you to confirm type yes and press ENTER.  

`tofu apply`{{exec}}

<br>

## Verify
Verify the existence of the NGINX container by visiting localhost:8000 in your web browser or running docker ps to see the container or running `curl localhost:8000`{{exec}}

<br>

`docker ps`{{exec}}

## Cleanup
To stop the container, run `tofu destroy`{{exec}}.

## Conclusion

You have now created and destroyed your first OpenTofu resources! OpenTofu will not have its own providers. Terraform providers have not altered their licenses, and the potential for such a change is virtually zero. OpenTofu works with the current Terraform providers, but it uses a separate registry.

Continue learning at [OpenTofu Docs](https://opentofu.org/docs/intro/).
