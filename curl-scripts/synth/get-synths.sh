#!/bin/bash

curl "http://localhost:4741/synth_settings" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
