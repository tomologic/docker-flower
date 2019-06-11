#!/bin/sh

BROKER_URL=${BROKER_URL:-amqp://guest:guest@rabbitmq//}
BROKER_API=${BROKER_API}

echo "Using broker URL: ${BROKER_URL}"

if [ -n "${BROKER_API}" ]; then
    echo "Using broker API URL: ${BROKER_API}"
    API_OPTION="--broker_api=${BROKER_API}"
fi

exec celery flower \
    --broker="${BROKER_URL}" ${API_OPTION} \
    --address=0.0.0.0 --port=8080
