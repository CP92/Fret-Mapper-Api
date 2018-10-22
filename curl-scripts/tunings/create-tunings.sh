#!/bin/bash

curl "http://localhost:4741/tunings" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "tuning": {
      "title": "'"standard e"'",
      "string0": ["F", "F#", "G", "G#", "A", "A#", "B", "C", "C#", "D", "D#"],
      "string1": ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#"],
      "string2": ["G#", "A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#"],
      "string3": ["D#", "E", "F", "F#", "G", "G#", "A", "A#", "B", "C", "C#"],
      "string4": ["A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"],
      "string5": ["F", "F#", "G", "G#", "A", "A#", "B", "C", "C#", "D", "D#"]
    }
  }'

echo
