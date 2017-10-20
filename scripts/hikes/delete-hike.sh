# ID=3 sh scripts/hikes/delete-hike.sh

curl --include --request DELETE "http://localhost:4741/hikes/${ID}" \
  --header "Authorization: Token token=${TOKEN}" \
