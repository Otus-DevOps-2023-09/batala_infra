terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}
provider "yandex" {
token = "y0_AgAAAABxqxakAATuwQAAAADw4B4DSZkA0e-LR7m7AiPPAXgVxw6m_AM"
cloud_id = "b1g75uge12b4dnqbk3f6"
folder_id = "b1gjmdta5qarrmg8d8ur"
zone = "ru-central1-c"
}

resource "yandex_compute_instance" "app" {
name = "reddit-app2"
resources {
cores = 2
memory = 2
}
metadata = {
  ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }
boot_disk {
initialize_params {
# Указать id образа созданного в предыдущем домашнем задании
image_id = "fd82pm0ddtr6jdi9lrk1"
# image_id = "fd8m3j9ott9u69hks0gg"

}
}
network_interface {
# Указан id подсети default-ru-central1-a
subnet_id = "b0c0huteufse46r90kpi"
nat = true
}
connection {
type = "ssh"
host = yandex_compute_instance.app.network_interface.0.nat_ip_address
user = "ubuntu"
agent = false
# путь до приватного ключа
private_key = file(var.private_key_path)
}

provisioner "file" {
  source = "files/puma.service"
  destination = "/tmp/puma.service"
}

provisioner "remote-exec" {
script = "files/deploy.sh"
}

}
