#!/bin/bash
cd /app/tsun-gen3-proxy
exec python tsun_proxy.py --mqtt-host "$MQTT_HOST" --mqtt-port "$MQTT_PORT" --mqtt-user "$MQTT_USER" --mqtt-password "$MQTT_PASSWORD"
