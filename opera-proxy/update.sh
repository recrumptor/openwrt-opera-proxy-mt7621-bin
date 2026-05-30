#!/bin/bash

# Доступные архитектуры:
# amd64, arm, arm64, mips, mips64, mips64le, mipsle
ARCH="$1"

# Получить последнюю доступную версию
VER="$(curl -fs -o /dev/null -w %{redirect_url} https://github.com/Alexey71/opera-proxy/releases/latest | cut -d '/' -f8 | sed 's/^v//')"

echo -e "🚀 Загружаем бинарные файлы Opera Proxy\nВерсия: $VER для архитектуры: $ARCH"

# Скачать бинарник
curl -LS "https://github.com/Alexey71/opera-proxy/releases/download/v${VER}/opera-proxy.linux-${ARCH}" -o files/usr/bin/opera-proxy

# Дать исполняемые права
chmod +x files/usr/bin/opera-proxy

# Обновить версию в Makefile
sed -i "s/^PKG_VERSION:=.*$/PKG_VERSION:=${VER}/" Makefile

echo -e "\n✅ Готово! Теперь можно собрать пакет:"
echo "make package/opera-proxy/compile V=s"

