FROM python:3.11-slim

WORKDIR /app

# Installer le proxy directement depuis GitHub
RUN pip install --no-cache-dir git+https://github.com/s-allius/tsun-gen3-proxy.git

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
