#!/bin/bash

BROKER_URL=${BROKER_URL:-amqp://guest:guest@rabbitmq//}

echo "Using broker URL: ${BROKER_URL}"

exec celery flower \
    --broker=${BROKER_URL} \
    --address=0.0.0.0 --port=8080
