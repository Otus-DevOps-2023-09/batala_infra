# batala_infra
batala Infra repository
# Homework 9, Ansible 2

## Main Part

* Сделал несколько playbook.
* Сделал установку монги из плейбука, стандартный скрипт со скачиванием ключа не заработал.
 * Скачал ключи для монги  
* Создал первый плейбук **clone.yaml**
* Проверил работу

Для использования инвентори отличного от указанного по-умолчанию необходимо использовать опцию "-i"
```
$ ansible all -m ping -i inventory.yml
