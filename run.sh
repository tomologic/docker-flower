#!/bin/bash

BROKER_URL=${BROKER_URL:-amqp://guest:guest@rabbitmq//}

celery flower \
    --broker=${BROKER_URL} \
    --address=0.0.0.0 --port=8080
