query=$1
imgRequest=$2

# NY Times API address
baseurl="http://api.nytimes.com/svc/search/v2/articlesearch.json"

# Current key = Robert-Jan
key="60b4b3ab2322ca40d4cb413c571d5c98:3:69789701"

# construct the complete request
requestUrl="$baseurl?q=$query&api-key=$key&page=$page"

# get first results page and extract total number of results/hits
hits=`curl -s $requestUrl | jq '.response.meta.hits'`

totalcount=0
page=0

# Iteratively download all the requests
while [ $totalcount -lt $imgRequest ]
do
	# construct request URL while iterating over paging
	requestUrl="$baseurl?q=$query&api-key=$key&page=$page"

	# get results and extract individual article metadata
	# from the response JSON

	curl -s $requestUrl > temp/temp.json
	jq -c ".response.docs[].multimedia" temp/temp.json > temp/multi.json
	cat temp/multi.json | grep ".jpg" > temp/multiSeperated.json
	count=`wc -l temp/multiSeperated.json | awk '{print $1}'`

	jq -c ".response.docs[]" temp/temp.json

	let totalcount=$totalcount+$count
	let page=$page+1

	# wait 0.2 seconds between request to not overload the server
	sleep 0.2
done