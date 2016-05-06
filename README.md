# Flower Docker image
[![](https://badge.imagelayers.io/tomologic/flower:latest.svg)](https://imagelayers.io/?images=tomologic/flower:latest)

Flower is a web based tool for monitoring and administrating Celery clusters. Github repository: https://github.com/mher/flower

# Usage

    docker -e "BROKER_URL=amqp://user:password@mq.example.com" run -d tomologic/flower

# With custom API URL
If using a non standard API URL, such as CloudAMQP, then the API URL can be set explicitly

    docker -e "BROKER_URL=amqp://user:password@mq.example.com" \
           -e "BROKER_API=http://user:password@mq.example.com:15672/api/" \
           run -d tomologic/flower
