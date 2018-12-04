#!/bin/bash

curl "http://localhost:4741/synth_settings" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "synth_setting": {
      "name": "'"${NAME}"'",
      "chorusrate": "'"${CHORUSRATE}"'",
      "chorustoggle": "'"${CHORUSTOGGLE}"'",
      "filtercutoff": "'"${FILTERCUTOFF}"'",
      "filtertoggle": "'"${FILTERTOGGLE}"'"
    }
  }'

echo
