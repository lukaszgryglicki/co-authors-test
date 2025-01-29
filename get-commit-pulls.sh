#!/bin/bash
. ./shared.sh
if [ -z "$1" ]
then
  echo "$0: parameter required: commit SHA, example: 'faaba1643cda567936d3c4856e292a42c59764b2'"
  exit 1
fi
curl -s -H "$ACC" -H "$AUT" -H "$VER" "https://api.github.com/repos/lukaszgryglicki/co-authors-test/commits/${1}/pulls" | jq -r "."
