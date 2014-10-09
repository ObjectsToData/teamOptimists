country=$1

# changing the urls
cat countryData/$country.jsonl | jq -r -c 'select(.multimedia[1].url != null) | .multimedia[1].url |= "static01.nyt.com/" + .' > countryData/linkUpdated$country.jsonl

# downloading the images
cat countryData/linkUpdated$country.jsonl | jq -r '.multimedia[1].url | select(. != null)' > countryData/onlyUpdatedLink$country.txt 

cat countryData/onlyUpdatedLink$country.txt | wget -i - -x -w 0.2 -q

# create validJSON again
touch countryData/linkUpdatedValidJSON$country.json
echo "{\"docs\": [" > countryData/linkUpdatedValidJSON$country.json
cat countryData/linkUpdated$country.jsonl | sed '$ ! s/$/,/' >> countryData/linkUpdatedValidJSON$country.json
echo "]}" >> countryData/linkUpdatedValidJSON$country.json

# remove redundant file
rm countryData/linkUpdated$country.jsonl 
