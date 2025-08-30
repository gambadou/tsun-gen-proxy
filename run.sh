#!/bin/bash
echo "📂 Contenu du dossier app/ :"
ls -al /app/tsun-gen3-proxy/app

# Chercher les fichiers Python dans app/
echo "🔍 Recherche des fichiers Python dans app/..."
find /app/tsun-gen3-proxy/app -name "*.py" -exec echo "📝 Trouvé : {}" \;

# Tenter d'exécuter le premier fichier Python trouvé
FICHIER_PYTHON=$(find /app/tsun-gen3-proxy/app -name "*.py" | head -n 1)

if [ -z "$FICHIER_PYTHON" ]; then
  echo "⚠️ Aucun fichier Python trouvé dans /app/tsun-gen3-proxy/app"
  exit 1
fi

echo "🚀 Exécution de $FICHIER_PYTHON"
exec python "$FICHIER_PYTHON" --mqtt-host "$MQTT_HOST" --mqtt-port "$MQTT_PORT" --mqtt-user "$MQTT_USER" --mqtt-password "$MQTT_PASSWORD"
