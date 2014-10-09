imageRequest=$1

country=("United+States" "China" "Iran" "Lebanon" "Egypt" "Qatar" "Turkey" "Afghanistan" "Syria" "South+Korea")

totalCountries=10

rm -rf countryData
rm -rf static01.nyt.com
rm -rf temp

mkdir countryData
mkdir temp

echo " "
echo " "

for((i=0; i<$totalCountries; i++))
do
	echo "Downloading Metadata: ${country[$i]}"
	# Enriching the dataset
	sh pullscript.sh ${country[$i]} $imageRequest > countryData/${country[$i]}.jsonl
	echo "Downloading Images: ${country[$i]}"
	# pulling images
	sh jpgpullscript.sh ${country[$i]}
	# enrichment
	# java -jar ../programs/imageplot-master/ImageJ/headless.jar - enrichment.txt
	echo " "
done

# visualisation
echo " "
echo " "
echo "Starting visualisation!"
echo "MAKE SURE THE -- teamOptimist-Viz -- REPOSITORY IS IN ON THE SAME LEVEL AS THIS REPOSITORY!!!"
echo "sleeping for 5 seconds to make sure you read this!"
echo " "
echo " "
sleep 5
sh visualscript.sh
