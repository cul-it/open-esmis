#!/bin/sh
. ./api_env.sh
AGENCY=$1
# Call API with authentication token
curl -H "Authorization: Bearer $token" -H "Accept: application/json" "$apiBase/publication/findByAgency/$AGENCY"
echo
