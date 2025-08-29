#!/bin/bash
exec python -m tsun_proxy --mqtt-host "$MQTT_HOST" --mqtt-port "$MQTT_PORT" --mqtt-user "$MQTT_USER" --mqtt-password "$MQTT_PASSWORD"
