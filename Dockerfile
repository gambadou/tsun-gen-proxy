FROM python:3.11-slim

# Dépendances de base
RUN apt-get update && apt-get install -y --no-install-recommends \
    git gcc libc-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Cloner le projet depuis GitHub
RUN git clone https://github.com/s-allius/tsun-gen3-proxy.git /app/tsun-gen3-proxy

# Installer les dépendances Python si requirements.txt existe
RUN if [ -f /app/tsun-gen3-proxy/requirements.txt ]; then pip install -r /app/tsun-gen3-proxy/requirements.txt; fi

# Copier le script de lancement
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
