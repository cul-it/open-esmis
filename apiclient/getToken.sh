#!/bin/bash 
apiHost=http://usda-stg.library.cornell.edu
apiBase=$apiHost/api/v1
json=$(curl -s -X POST "$apiHost/user_token" -d '{"auth": {"email": "APIUSER", "password": "APIPASS"}}' -H "Content-Type: application/json")
token=$(echo $json | cut -d":" -f2 | sed -e 's/"//g' -e 's/}$//g')
echo Token: $token


