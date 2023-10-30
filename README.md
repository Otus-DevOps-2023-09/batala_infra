# batala_infra
batala Infra repository
# ДЗ по ssh forwarding - белый адрес 158.160.120.23 внутренний адрес 10.128.0.28
# сначало на локальный порт 9999 прокидываем 22 с внутреннего адреса 10.128.0.28
# C:\WINDOWS\system32> ssh -L 0.0.0.0:9999:10.128.0.28:22 appuser@158.160.120.23
# потом по этому порту попадаем на внутренний хост
# C:\Users\AntBtk> ssh -i C:\Users\AntBtk\.ssh\id_ed25519.pub -p 9999 appuser@127.0.0.1
