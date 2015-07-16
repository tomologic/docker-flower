# Flower Docker image
[![](https://badge.imagelayers.io/tomologic/flower:latest.svg)](https://imagelayers.io/?images=tomologic/flower:latest)

Flower is a web based tool for monitoring and administrating Celery clusters. Github repository: https://github.com/mher/flower

# Usage

    docker -e "BROKER_URL=amqp://user:password@mq.example.com" run -d tomologic/flower
