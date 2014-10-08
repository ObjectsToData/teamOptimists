imageRequest=$1

country=("Kenya" "Iran" "Russia" "China" "United States" "Netherlands" "Germany" "Japan" "Brasil" "Argentinia" "Israel" "Turkey" "Egypt" "Qatar" "Libanon")

totalCountries=4

rm -rf countryData
rm -rf static01.nyt.com
rm -rf temp

mkdir countryData
mkdir temp

for((i=0; i<$totalCountries; i++))
do
	sh pullscript.sh ${country[$i]} $imageRequest > countryData/${country[$i]}.json
	sh jpgpullscript.sh ${country[$i]}
done
