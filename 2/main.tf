terraform {
  required_providers{
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

resource "docker_container" "nginx"{
  name  = "nginx"
  image = "nginx:1"
  ports {
    internal = 80
    external = 80
  }
}
