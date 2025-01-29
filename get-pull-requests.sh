#!/bin/bash
. ./shared.sh
curl -s -H "$ACC" -H "$AUT" -H "$VER" "https://api.github.com/repos/lukaszgryglicki/co-authors-test/pulls?state=all" | jq -r "."
