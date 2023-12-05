terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}
provider "yandex" {
  #service_account_key_file 
  token = "y0_AgAAAABxqxakAATuwQAAAADw4B4DSZkA0e-LR7m7AiPPAXgVxw6m_AM"
  cloud_id                 = "b1g75uge12b4dnqbk3f6"
  folder_id                = "b1gjmdta5qarrmg8d8ur"
  zone                     = "ru-central1-c"
}

resource "yandex_compute_instance" "db" {
  name        = "reddit-db-${var.env}"
  platform_id = "standard-v3"

  labels = {
    tags = "reddit-db-${var.env}"
  }

  resources {
    core_fraction = 50
    cores         = 2
    memory        = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.db_disk_image
    }
  }

  network_interface {
    subnet_id = var.subnet_id
  }

 metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }
}