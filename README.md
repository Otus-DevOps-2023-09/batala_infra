# batala_infra
batala Infra repository
# Homework 10, Ansible 3
 
## Main Part

* Сделал две роли.
* Скачал роль для балансировщика
 * Создал группу безопасности через веб интерфейс
 * Назначил группу беопасности на сетевой интерфейс в терраформе   network_interface {
    subnet_id = var.subnet_id
    nat       = true
    security_group_ids = enp10p0ksn3lagj19iuq
  }

* Проверил работу


```

