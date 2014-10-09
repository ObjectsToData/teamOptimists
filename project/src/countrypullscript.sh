imageRequest=$1

country=("United+States" "China" "Iran" "Lebanon" "Egypt" "Qatar" "Turkey" "Afghanistan" "Syria" "South+Korea")

totalCountries=10

rm -rf countryData
rm -rf static01.nyt.com
rm -rf temp

mkdir countryData
mkdir temp

for((i=0; i<$totalCountries; i++))
do
	# Enriching the dataset
	sh pullscript.sh ${country[$i]} $imageRequest > countryData/${country[$i]}.jsonl
	# pulling images
	sh jpgpullscript.sh ${country[$i]}
	# enrichment
	# java -jar ../programs/imageplot-master/ImageJ/headless.jar - orientalAnalysis.txt
done
