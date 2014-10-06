country=$1

cat countryData/$country.json | jq -r ".multimedia[0].url | select(. != null)" | sed 's/^/static01.nyt.com\//' > temp/imagesURLs.json

cat temp/imagesURLs.json | wget -i - -P images/$country	-w 0.2