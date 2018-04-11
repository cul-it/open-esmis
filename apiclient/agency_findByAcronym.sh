#!/bin/sh
. ./api_env.sh
acronym=$1
curl -H "Authorization: Bearer $token" -H "Accept: application/json" $apiBase/agency/findByAcronym/$acronym
echo
