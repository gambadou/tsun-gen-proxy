FROM python:3.11-slim

# Installer les dépendances de base (git et compilation)
RUN apt-get update && apt-get install -y --no-install-recommends \
    git gcc libc-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Cloner le dépôt depuis GitHub
RUN git clone https://github.com/s-allius/tsun-gen3-proxy.git /app/tsun-gen3-proxy

# Copier le script de démarrage
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Exécuter le script
CMD ["/run.sh"]
