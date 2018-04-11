#!/bin/sh
. ./api_env.sh
IDENTIFIER=$1
curl -H "Authorization: Bearer $token" -H "Accept: application/json" "$apiBase/release/findByIdentifier/$IDENTIFIER?start_date=$START&latest=true
echo
