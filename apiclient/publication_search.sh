#!/bin/sh
. ./api_env.sh
# Use token variable when making API request
TERM=$1
curl -H "Authorization: Bearer $token" -H "Accept: application/json" "$apiBase/publication/search?q=$TERM"
echo
