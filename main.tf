terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pulls the official Nginx Docker image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Provisions the Docker container
resource "docker_container" "nginx_server" {
  image = docker_image.nginx.image_id
  name  = "terraform-nginx-demo"

  ports {
    internal = 80
    external = 8080
  }
}
