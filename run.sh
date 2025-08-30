#!/bin/bash
echo "📂 Contenu du dossier tsun-gen3-proxy/app :"
ls -al /app/tsun-gen3-proxy/app

# Exécution du fichier principal dans le répertoire app/
exec python /app/tsun-gen3-proxy/app/proxy.py \
  --mqtt-host "$MQTT_HOST" \
  --mqtt-port "$MQTT_PORT" \
  --mqtt-user "$MQTT_USER" \
  --mqtt-password "$MQTT_PASSWORD"
