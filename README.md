# OpenWrt-opera-proxy-mt7621-bin
🧭 OpenWrt Opera Proxy — MT7621 Binary Package
Этот репозиторий содержит готовый .ipk-пакет клиента Opera Proxy для OpenWrt на архитектуре mipsel_24kc (MT7621). 


📦 Что внутри.
Предварительно собранный .ipk-файл: opera-proxy_x.xx.x_mipsel_24kc.ipk

Подходит для маршрутизаторов на базе MT7621 с достаточным объемом флеш- памяти (размер бинарника в /usr/bin около 10 MB)

⚙️ Конфигурация.
Файл конфигурации: /etc/config/opera-proxy Скрипт запуска: /etc/init.d/opera-proxy

Пример конфигурации:
```
config instance 'default'
  option enabled '1'
  option args '--bind-address 127.0.0.1:18081'

config instance 'Americas'
  option enabled '1'
  option args '--bind-address 127.0.0.1:18082 -country AM -socks-mode'

config instance 'Asia'
  option enabled '1'
  option args '--bind-address 127.0.0.1:18083 -country AS -socks-mode'
```
Создаст один http и два socks прокси сервера

  Подробнее можно прочитать на странице https://github.com/Snawoot/opera-proxy

  📚 Источник
Исходный код клиента: [Snawoot/opera-proxy](https://github.com/Snawoot/opera-proxy)

Версия OpenWrt: Сборка выполнена для OpenWrt 24.10.

Сборка выполнена с использованием OpenWrt SDK 24.10.2 для ramips/mt7621

Конфигурация Outbound для Podkop
```
  {
      "type": "http",
      "server": "127.0.0.1",
      "server_port": 18081
    }
```
