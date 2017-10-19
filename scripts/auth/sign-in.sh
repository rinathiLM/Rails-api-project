#!/bin/bash

# EMAIL="rina" PASSWORD="rina" sh scripts/auth/sign-in.sh
# TOKEN=BAhJIiU3ZWExMTRjNzVlZGEyNWM2YmM0MzQ3M2JhMjU4NDhlMwY6BkVG--135c47a64f148de35a0e25a50090c2377c6a4517

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
