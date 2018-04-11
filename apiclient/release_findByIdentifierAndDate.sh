#!/bin/sh
. ./api_env.sh
IDENTIFIER=$1
START=$2
END=$3
curl -H "Authorization: Bearer $token" -H "Accept: application/json" "$apiBase/release/findByIdentifier/$IDENTIFIER?start_date=$START&end_date=$END" 
echo
