#!/bin/sh
. ./api_env.sh
IDENTIFIER=$1
curl -H "Authorization: Bearer $token" -H "Accept: application/json" "$apiBase/release/findByIdentifier/$IDENTIFIER"
echo
