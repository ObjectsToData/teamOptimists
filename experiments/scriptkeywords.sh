Data exploration from the keywords in the "Digital_Humanities" API, with json 


jq '.docs[].keywords[].name' nytimes_humanities_pretty.json > ../keywordsName.json
or 
jq '.docs[].keywords' nytimes_humanities_pretty.json

Change the file to words
mv keywordsName.json words.txt
cat words.txt | sort | uniq
cat words.txt.| sort | uniq -c

The keywords are build up from several options
	 name= subject	
	value= categorie 
		creative works, glocations, organizations, persons, subject, type of material, unknown. 

Exploring the value glocation could give us information about how the news articles are spread geographically over country, continents, or the world. 
	Glocations, for example, show 7000 hits, of which 3109 are from the U.S. 
