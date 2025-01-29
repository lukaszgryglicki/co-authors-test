#!/bin/bash
. ./shared.sh
if [ -z "$1" ]
then
  echo "$0: parameter required: pull-request-number, example: 1"
  exit 1
fi
curl -s -H "$ACC" -H "$AUT" -H "$VER" "https://api.github.com/repos/lukaszgryglicki/co-authors-test/pulls/${1}/commits" | jq -r "."
