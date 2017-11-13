#!/bin/bash
set -e
JSON=$(wget -q -O - https://www.server-residenz.com/tools/ts3versions.json)

while read key value; do
  case $key in
    \"latest\":)
      value=${value#*\"}
      value=${value%\"*}
      echo "$value"
      break
  esac
done <<<"$JSON"