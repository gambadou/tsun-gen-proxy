FROM python:3.11-slim

# Installer les dépendances de base (git et compilation)
RUN apt-get update && apt-get install -y --no-install-recommends \
    git gcc libc-dev && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Cloner le dépôt depuis GitHub
RUN git clone https://github.com/gambadou/tsun-gen3-proxy-modifiet.git /app/tsun-gen3-proxy

# Installer les dépendances Python (y compris 'schema' si présent dans requirements.txt)
RUN if [ -f /app/tsun-gen3-proxy/requirements.txt ]; then pip install -r /app/tsun-gen3-proxy/requirements.txt; fi

# Copier le script de démarrage
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Exécuter le script
CMD ["/run.sh"]
