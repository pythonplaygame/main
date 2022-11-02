#!/bin/sh
if [ ! -f UUID ]; then
  UUID="2ba51fa4-9a4d-422f-ac01-b97165f026a9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

