# NY Times API address
baseurl="http://api.nytimes.com/svc/search/v2/articlesearch.json"

# API request parameters (you need to get your own API key)
# which you can get by registering on the NY Times developer 
# web site: http://developer.nytimes.com/
key="60b4b3ab2322ca40d4cb413c571d5c98:3:69789701"
query="jpg"
page=0

# construct the complete request
requestUrl="$baseurl?q=$query&api-key=$key&page=$page"

# get first results page and extract total number of results/hits
hits=`curl -s $requestUrl | jq '.response.meta.hits'`

# The NY Times API returns 10 results per request
# The number of hits divided by 10 gives the number
# of requests we have to make to get all results
totalRequests=hits/10

# Iteratively download all the requests
for ((page=0; page<$totalRequests; page++))
do
	# construct request URL while iterating over paging
	requestUrl="$baseurl?q=$query&api-key=$key&page=$page"

	# get results and extract individual article metadata
	# from the response JSON
	curl -s $requestUrl | jq -c '.response.docs[]'

	# wait 0.2 seconds between request to not overload the server
	sleep 0.2
done
