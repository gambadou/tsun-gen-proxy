#!/bin/bash
echo "📂 Contenu du dossier app/ :"
ls -al /app/tsun-gen3-proxy/app

# Ajouter app/src au PYTHONPATH pour permettre l'importation des modules relatifs
export PYTHONPATH=/app/tsun-gen3-proxy/app/src:$PYTHONPATH

# Essayer d'exécuter le fichier Python principal (s'il est dans src)
echo "🚀 Exécution de config_read_toml.py"
exec python /app/tsun-gen3-proxy/app/src/cnf/config_read_toml.py --mqtt-host "$MQTT_HOST" --mqtt-port "$MQTT_PORT" --mqtt-user "$MQTT_USER" --mqtt-password "$MQTT_PASSWORD"
