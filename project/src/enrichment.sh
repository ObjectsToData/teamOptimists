country=$1

touch temp/currentCountry.txt
echo $country > temp/currentCountry.txt

java -jar ../programs/imageplot-master/ImageJ/headless.jar - enrichment.txt

totalLines=`wc -l countryData/processedData$country.txt | awk '{print $1}'`
let totalLines=$totalLines+1

for((iterator=1; iterator<=$totalLines; iterator++))
do
	iteratorfinished=$iterator"q;d"
	enrichData=`sed $iteratorfinished countryData/processedData$country.txt`
	sed $iteratorfinished countryData/linkUpdated$country.jsonl | jq -c --arg enrich "$enrichData" '.enrichment = ( $enrich | fromjson )' >> countryData/combinedData$country.jsonl	
done

touch countryData/combinedJSON$country.json
echo "{\"docs\": [" > countryData/combinedJSON$country.json
cat countryData/combinedData$country.jsonl | sed '$ ! s/$/,/' >> countryData/combinedJSON$country.json
echo "]}" >> countryData/combinedJSON$country.json

jq "." countryData/combinedJSON$country.json > countryData/prettyCombined-$country.json