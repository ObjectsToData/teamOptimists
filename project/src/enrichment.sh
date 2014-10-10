country=$1

touch temp/currentCountry.txt
echo $country > temp/currentCountry.txt

java -jar ../programs/imageplot-master/ImageJ/headless.jar - enrichment.txt