#!/bin/bash
exec tsun-gen3-proxy --mqtt-host "$MQTT_HOST" --mqtt-port "$MQTT_PORT" --mqtt-user "$MQTT_USER" --mqtt-password "$MQTT_PASSWORD"