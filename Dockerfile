FROM python:3.11-slim

WORKDIR /app

RUN pip install --no-cache-dir tsun-gen3-proxy

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]