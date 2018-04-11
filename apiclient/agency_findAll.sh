#!/bin/sh
. ./api_env.sh
curl -H "Authorization: Bearer $token" -H "Accept: application/json" "$apiBase/agency/findAll" 
echo
