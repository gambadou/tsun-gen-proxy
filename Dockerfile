FROM python:3.11-slim

WORKDIR /app

# Installer git et dépendances
RUN apt-get update && \
    apt-get install -y --no-install-recommends git gcc libc-dev && \
    rm -rf /var/lib/apt/lists/*

# Cloner directement le projet
RUN git clone https://github.com/s-allius/tsun-gen3-proxy.git /app/tsun-gen3-proxy

# Installer les dépendances du projet si requirements.txt existe
RUN pip install --no-cache-dir -r /app/tsun-gen3-proxy/requirements.txt || true

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
