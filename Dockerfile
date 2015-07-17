FROM python:3-slim

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY requirements.txt /usr/src/app/

RUN apt-get update && \
    apt-get install -y build-essential && \
    pip install --no-cache-dir -r requirements.txt && \
    apt-get remove -y --purge build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY run.sh /usr/src/app/

EXPOSE 8080

CMD ["bash", "run.sh"]
