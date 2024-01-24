FROM alpine:latest

ENV LANG C.UTF-8

ENV BOT_TOKEN ''
ENV MQTT_URL ''
ENV MQTT_PORT ''
ENV MQTT_USERNAME ''
ENV MQTT_PASSWORD ''
ENV TOPIC_ONLINE 
ENV TOPIC_VOICE ''
ENV TOPIC_COMMAND ''
ENV GUILD_ID ''
ENV YOUR_ID ''

RUN apk add --no-cache bash

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk update && \
    apk add --no-cache \
    nodejs-current \
    npm

COPY package.json /
RUN cd / && npm install
COPY server.js /

COPY run.sh /
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
