# To copy and startup the server (Works, at least on my system)

rm -rf ../../../teamOptimists-Viz/src/images/static01.nyt.com
cp -R static01.nyt.com ../../../teamOptimists-Viz/src/images/static01.nyt.com

rm -rf ../../../teamOptimists-Viz/src/data
cp -R countryData ../../../teamOptimists-Viz/src/data

cd ../../../teamOptimists-Viz/

sleep 7 && open http://localhost:4444/ &
openpid=$!

grunt

