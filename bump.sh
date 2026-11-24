#!/bin/sh
# Marca una versión nueva (fecha-hora) en index.html y version.json para que los móviles se actualicen solos.
V=$(date -u +%Y%m%d%H%M%S)
sed -i "s/const APP_V='[^']*'/const APP_V='$V'/" index.html
printf '{"v":"%s"}\n' "$V" > version.json
echo "$V"
