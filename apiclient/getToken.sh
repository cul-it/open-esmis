#!/bin/bash
json=$(curl -s -X POST "http://usda-stg.library.cornell.edu/user_token" -d '{"auth": {"email": "apiuser", "password": "my_password"}}' -H "Content-Type: application/json")
token=$(echo $json | cut -d":" -f2 | sed -e 's/"//g' -e 's/}$//g')
echo "Token: $token"
