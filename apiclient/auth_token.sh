# localhost
# apiHost=http://localhost:3000
# apiBase=http://localhost:3000/api/v1


# usda-stg
apiHost=http://usda-stg.library.cornell.edu
apiBase=http://usda-stg.library.cornell.edu/api/v1

# usda-prod
# apiHost=http://usda-prod.library.cornell.edu
# apiBase=http://usda-prod.library.cornell.edu/api/v1
# Get an authentication token
json=$(curl -s -X POST "$apiHost/user_token" -d '{"auth": {"email": "apiuser", "password": "PASSWORD"}}' -H "Content-Type: application/json")
token=$(echo $json | cut -d":" -f2 | sed -e 's/"//g' -e 's/}$//g')
