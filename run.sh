#!/bin/bash
echo "📂 Contenu du dossier tsun-gen3-proxy :"
ls -al /app/tsun-gen3-proxy

# À ADAPTER après avoir vu quel est le vrai script à lancer
exec python /app/tsun-gen3-proxy/tsun_proxy.py \
  --mqtt-host "$MQTT_HOST" \
  --mqtt-port "$MQTT_PORT" \
  --mqtt-user "$MQTT_USER" \
  --mqtt-password "$MQTT_PASSWORD"
