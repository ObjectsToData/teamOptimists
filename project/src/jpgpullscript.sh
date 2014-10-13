country=$1

# changing the urls
cat countryData/$country.jsonl | jq -r -c 'select(.multimedia[1].url != null) | .multimedia[1].url |= "static01.nyt.com/" + .' > countryData/linkUpdated$country.jsonl

# Creating good formatted list of URLS
cat countryData/linkUpdated$country.jsonl | jq -r '.multimedia[1].url | select(. != null)' > countryData/onlyUpdatedLink$country.txt 

# downloading the images
cat countryData/onlyUpdatedLink$country.txt | wget -i - -x -w 0.2 -q
