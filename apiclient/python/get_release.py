# importing the requests library 
import requests
import json
  
# defining the api-endpoint  
authUrl = "https://usda.library.cornell.edu/user_token"
apibase = "http://usda.library.cornell.edu/api/v1"

# harcode the identifier
identifier = "CropProg"

# this is the json to post to the user_token url
auth_json = '{"auth":{"password":"CHANGE ME","email":"CHANGE ME"}}'

# set post header to accept and return json
postheader = {'Content-Type': 'application/json', 'Accept':'application/json'}

# post the request
r1 = requests.post(authUrl, data = auth_json , headers=postheader)

# get the response and pull out the value of the jwt key
json_response1= r1.json()
token = json_response1['jwt']
#
# Now add token to request header
getheader = {'Content-Type': 'application/json', 'Authorization': 'Bearer ' + token}

# This is just one example of an api request. It will return json for the latest release of a publication
r2 = requests.get(apibase + "/release/findByIdentifier/" + identifier + "?latest=true" , headers=getheader)
# print(r2.status_code)
print(r2.text)

