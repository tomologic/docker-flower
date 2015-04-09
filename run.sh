#!/bin/bash

celery flower \
    --broker=amqp://guest:guest@rabbitmq// \
    --address=0.0.0.0 --port=8080
