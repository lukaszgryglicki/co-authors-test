#!/bin/bash
if [ -z "$USR" ]
then
  export USR=lukaszgryglicki
fi
export ACC="Accept: application/vnd.github+json"
export AUT="Authorization: Bearer $(cat ./${USR}.token.secret)"
export VER="X-GitHub-Api-Version: 2022-11-28"
