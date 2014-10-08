imageRequest=$1

country=("Kenya" "Somalia" "Netherlands" "France")

totalCountries=4

mkdir countryData

for((i=0; i<$totalCountries; i++))
do
	sh pullscript.sh ${country[$i]} $imageRequest > countryData/${country[$i]}.json
	sh jpgpullscript.sh ${country[$i]}
done
