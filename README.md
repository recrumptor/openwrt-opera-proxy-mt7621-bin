# OpenWrt-opera-proxy
🧭 OpenWrt Opera Proxy — Binary Packages
Этот репозиторий содержит готовые .ipk пакеты клиента Opera Proxy для OpenWrt. Пакеты автоматически собираются с использованием официального SDK для двух наиболее популярных архитектур
Архитектура,Процессор (Примеры),Файл пакета
mipsel_24kc,"MT7621 (Keenetic Viva/Kn-1810, Xiaomi AC2100)",opera-proxy_vX.Y.Z_mipsel_24kc.ipk
aarch64_cortex-a53,"MT7981/7986 (Xiaomi AX3000T, TUF-AX4200)",opera-proxy_vX.Y.Z_aarch64.ipk
Требования к памяти: Размер установленного бинарного файла в /usr/bin/ составляет около 10 MB. Убедитесь, что у вас достаточно свободного места в системном разделе (Flash) или используйте Extroot.
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
