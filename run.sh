#!/bin/sh

# Uncomment this block and fill in your values if you are not using environment variables
# BOT_TOKEN=bot_token
# MQTT_URL=mqtt_url
# MQTT_PORT=mqtt_port
# MQTT_USERNAME=mqtt_username
# MQTT_PASSWORD=mqtt_password
# TOPIC_ONLINE=topic_online
# TOPIC_VOICE=topic_voice
# TOPIC_COMMAND=topic_command
# GUILD_ID=guild_id
# YOUR_ID=your_id

node ./server.js \
$BOT_TOKEN \
$MQTT_URL \
$MQTT_PORT \
$MQTT_USERNAME \
$MQTT_PASSWORD \
$TOPIC_ONLINE \
$TOPIC_COMMAND \
$TOPIC_VOICE \
$GUILD_ID \
$YOUR_ID