country=$1

cat countryData/$country.json | jq -r ".multimedia[1].url | select(. != null)" | sed 's/^/static01.nyt.com\//' > countryData/URL$country.json

cat countryData/URL$country.json | wget -i - -x	-w 0.2