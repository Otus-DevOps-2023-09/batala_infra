# batala_infra
batala Infra repository

# batala_infra
batala Infra repository
# Homework 8, Ansible 1

## Main Part

* Установил Ansible на ВМ в облаке, чтобы можно было работать с разных компов.
* Создал первые конфиг файлы
  * **ansible.cfg** - параметры по-умолчанию
  * **inventory** - описание группы хостов и параметры доступа к ним
  * **inventory.yaml** - то же самое только в yaml формате
* Создал первый плейбук **clone.yaml**
* Проверил работу

Для использования инвентори отличного от указанного по-умолчанию необходимо использовать опцию "-i"
```
$ ansible all -m ping -i inventory.yml

