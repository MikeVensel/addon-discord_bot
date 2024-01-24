FROM alpine:latest

ENV LANG C.UTF-8

ENV BOT_TOKEN ''
ENV MQTT_URL 'mqtt://localhost'
ENV MQTT_PORT '1883'
ENV MQTT_USERNAME ''
ENV MQTT_PASSWORD ''
ENV TOPIC_ONLINE 'discord/online'
ENV TOPIC_VOICE 'discord/voice'
ENV TOPIC_COMMAND 'discord/command'
ENV GUILD_ID ''
ENV YOUR_ID ''

RUN apk add --no-cache bash

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk update && \
    apk add --no-cache \
    nodejs-current \
    npm

COPY package.json package-lock.json /
RUN cd / && npm install
COPY server.js /

COPY run.sh /
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
