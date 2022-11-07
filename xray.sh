#!/bin/sh
if [ ! -f UUID ]; then
  UUID="5fd73f50-a89a-4cb2-b73c-13abd2401b88"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

