country=$1

touch countryData/URL$country.txt
echo "url" > countryData/URL$country.txt

cat countryData/$country.json | jq -r ".multimedia[1].url | select(. != null)" | sed 's/^/static01.nyt.com\//' >> countryData/URL$country.txt

cat countryData/URL$country.txt | wget -i - -x	-w 0.2

csvtojson countryData/URL$country.txt > countryData/URL$country.json

rm countryData/URL$country.txt