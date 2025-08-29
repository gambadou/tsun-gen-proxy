FROM python:3.11-slim

WORKDIR /app

# Installer git et outils nécessaires pour pip
RUN apt-get update && \
    apt-get install -y --no-install-recommends git gcc libc-dev && \
    rm -rf /var/lib/apt/lists/*

# Installer le proxy depuis GitHub
RUN pip install --no-cache-dir git+https://github.com/s-allius/tsun-gen3-proxy.git

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
