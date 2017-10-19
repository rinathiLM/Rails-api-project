# ID=1 DIFFICULTY=3 sh scripts/hikes/update-hike.sh

curl --include --request PATCH "http://localhost:4741/hikes/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
    "hike": {
      "difficulty": "'"${DIFFICULTY}"'"
    }
  }'
