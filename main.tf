provider "docker" {
#  host = "tcp://127.0.0.1:838/"
}

# Create a container
resource "docker_container" "foo" {
  image = "${docker_image.ubuntu.latest}"
  name  = "bar"
}

resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}
