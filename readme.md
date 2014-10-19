# Teamoptimists - Representation of the Orient in the NY-Times


Dataset construction and enrichment script

Howto:
sh countrypullscript.sh (amout, for instance 10)

Requirement:
The teamOptimist-Viz repository needs to be on the same level

Dependencies:
- jq
- wget
- curl
- java

Data visualisation script: 
please find the readme for this script in the repository about visualisation. 





What this project is about: 

This project allows you to find out how 'The Orient' is represented in the database of the NY-times.

On your left the Occident displays, on your right the Orient. These concepts refer to the theory of Edward Said, Orientalism, in which the Occident 'dramatizes the distance' between themselves and the Orient by simplificatying and stereotyping the Orient. This theory is often used to describe European-Asian relations, can we recognize it also in the US-Asia relations? Find out more about Orientalism here: http://www.rlwclarke.net/Courses/LITS3304/2007-2008/08CSaidOrientalism.pdf

The images will be pulled from the API using a query for the United States (which includes the U.S.A. as well), and Afghanistan, China, Egypt, Iran, Lebanon, Quatar, South Korea and Syria. 

Note: Even though this script should provide you with 500 photoś from each country, you might notice the time lapse runs unevenly and some countries even give you less than 500 photos. Future work should solve this, but for the moment just bear this in mind when interpretating the results. 


You are able to interpret these images with or without a filter. The filters hue, saturation, brightness, article length or complexity can help you to find some patterns. Also you can filter out the opinion-articles as these often contain pictures of authors. 

We are curious to find out your observations, feel welcome to share them at all times! 
