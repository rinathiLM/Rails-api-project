# DATE="2017-10-16" NAME="Mount Si" CITY="North Bend" STATE="WA" ELEVATION=5200 MILES=7.9 DURATION=04:56 DIFFICULTY=4 RATING=4 NOTES="cloudy day" sh scripts/hikes/create-hike.sh

curl --include --request POST "http://localhost:4741/hikes" \
  --header "Content-Type: application/json" \
  --data '{
    "hike": {
      "hike_date": "'"${DATE}"'",
      "hike_name": "'"${NAME}"'",
      "city": "'"${CITY}"'",
      "state": "'"${STATE}"'",
      "elevation_gain": "'"${ELEVATION}"'",
      "miles_rt": "'"${MILES}"'",
      "duration": "'"${DURATION}"'",
      "difficulty": "'"${DIFFICULTY}"'",
      "rating": "'"${RATING}"'",
      "notes": "'"${NOTES}"'"
    }
  }'

  #  data types assigned:
  # t.date "hike_date"
  # t.string "hike_name"
  # t.string "city"
  # t.string "state"
  # t.integer "elevation_gain"
  # t.float "miles_rt"
  # t.time "duration"
  # t.integer "difficulty"
  # t.integer "rating"
  # t.string "notes"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
