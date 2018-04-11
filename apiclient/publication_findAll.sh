#!/bin/sh
. ./api_env.sh
# Call API with authentication token
curl -H "Authorization: Bearer $token" -H "Accept: application/json" "$apiBase/publication/findAll"
echo
