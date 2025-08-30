#!/bin/bash
echo "📂 Contenu du dossier app/ :"
ls -al /app/tsun-gen3-proxy/app

# Essayer d'exécuter le fichier principal (selon le nom trouvé)
if [ -f /app/tsun-gen3-proxy/app/main.py ]; then
  exec python /app/tsun-gen3-proxy/app/main.py --mqtt-host "$MQTT_HOST" --mqtt-port "$MQTT_PORT" --mqtt-user "$MQTT_USER" --mqtt-password "$MQTT_PASSWORD"
elif [ -f /app/tsun-gen3-proxy/app/proxy.py ]; then
  exec python /app/tsun-gen3-proxy/app/proxy.py --mqtt-host "$MQTT_HOST" --mqtt-port "$MQTT_PORT" --mqtt-user "$MQTT_USER" --mqtt-password "$MQTT_PASSWORD"
else
  echo "⚠️ Aucune entrée valide trouvée dans /app/tsun-gen3-proxy/app"
  exit 1
fi
