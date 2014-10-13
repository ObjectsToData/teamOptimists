imageRequest=$1

country=("United+States" "China" "Iran" "Lebanon" "Egypt" "Qatar" "Turkey" "Afghanistan" "Syria" "South+Korea")
# country=("Iran" "Lebanon" "Egypt" "Qatar" "Turkey" "Afghanistan" "Syria" "South+Korea")


totalCountries=10

rm -rf countryData
rm -rf static01.nyt.com
rm -rf temp

mkdir countryData
mkdir temp

echo " "

for((i=0; i<$totalCountries; i++))
do
	# Enriching the dataset
	echo "Downloading Metadata: ${country[$i]}"
	sh pullscript.sh ${country[$i]} $imageRequest > countryData/${country[$i]}.jsonl
	
	# pulling images
	echo "Downloading Images: ${country[$i]}"
	sh jpgpullscript.sh ${country[$i]}

	# enrichment
	echo "Enriching Data: ${country[$i]}"
	sh enrichment.sh ${country[$i]}
	echo " "

	#cleanup
	rm countryData/onlyUpdatedLink${country[$i]}.txt
	rm countryData/processedData${country[$i]}.txt
	rm countryData/linkUpdated${country[$i]}.jsonl
	rm countryData/combinedData${country[$i]}.jsonl
	rm countryData/combinedJSON${country[$i]}.json

done

# visualisation
echo " "
echo " "
echo "Starting visualisation!"
echo "MAKE SURE THE -- teamOptimist-Viz -- REPOSITORY IS IN ON THE SAME LEVEL AS THIS REPOSITORY!!!"
read -p "Are you sure you want to continue? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
	echo "Lets go see it all then!"
else
 	echo "place it there then!"
fi

sh visualscript.sh
