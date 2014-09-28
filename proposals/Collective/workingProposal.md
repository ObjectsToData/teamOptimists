# Working Proposal - Team Optimists

## Introduction

**Research Question:**
How does the American newspaper *The New York Times* represent third world countries (like Iraq, Somalia and Bhirma etc,) through images in contemporary society in comparison to first world countries (like the United States and other Western countries)?

**Product:**
We hope to find a pattern in the images accompanying the online articles. In order to look for patterns we will visualize the images on a geographical map (interface).

**Theoretical Framework:**
We would like to use the bigger context of Digital Humanities as a foundation for our research and interpretation of our objects of study(data). We believe that our findings will lean towards subjective representation of the portraid countries. Therefore we could make use of texts from the discipline of Cultural Studies (Stuart Hall, Edward Said, etc.). 

## Method

We want to correlate images of first world countries (like USA and The Netherlands etc.) with third world countries by their geolocation tags, visualize them, and look for patterns. For this the following steps will be taken:

**Data Retrieval & Parsing:**

1. Filtering: define a list of countries (preferably with geolocation boundaries) together with a meaningful theme to narrow it down and increase the likelihood of meaningful hits. These will be used as the search query. 
2. Parsing: as the NYT sets clear limits on data retrieval we already need to parse the data while retrieving it. It's necessary to write a loop to make sure we stop requesting after the first 100 proper hits. The hit should include both an image and a geotag. 
3. Next we will need to pull the images from the url's in the dataset and store those locally.

**Visualizing:**
In this step we are considering to break the group in half. That way we could interpret the results in two different visualizations. One group, for instance, could focus on the geolocations, while the other group focuses on another plot, time, color or basic composition for instance. The second visuealization (not in ordder of importance) zould substantiates the other visualization. Meaning the time-visualization could explain why we have chosen to visualize a certain year in the map-visualization. 
We will undertake te following for creating the geographic plot:

1. Combine the country's geolocation information with the images local source locations in one csv file.
2. Transform the geolocation information to valid plotting locations for each image. Interesting step, but also the most mathematical one. It's probably done before many times before though, so we can steal it.
3. Feed it to Imageplot in imageJ and enjoy the show.

**Interpretation:**
We are creating a visualization that, we hope, will give a new insight. The last step will be to interpret this result. Is there actually a pattern? And what if there is, how trustworthy is it? Is it necessary to further expand the dataset? Is the geolocation tag a good pointer for the actual location of the picture? There are many questions that we will need to (re)consider in this fase. 

## Progress

From previous explorations on the dataset we found that the use of images in the online articles of the NYT is a bit minimal at times. Mostly the pictures from the Humanities dataset include faces. 

We already explored the set using jq. This yielded us the geolocation tags. They are part of the keywords and can be accessed using the following command:

	jq '.docs[].keywords[]' nytimes_humanities_pretty.json

Example of a geolocation keyword: 
	
	keywords : 
		[ ...
		],
		[
			"name": "glocations",
			"value": "GREAT BRITAIN"
		]

Yet the geolocation of the image is not always given, there is some inconsistency in this. However, if we enlarge our scope we should find enough glocations to make a first script. 

We expect that the use of images with the articles online is more minimal than we are used to in paper, and therefore they might be simplified. We are expecting the images to be used as stereotypes rather than types, as this allows the images to display 'the Other' as someone exclusive to the societies norms and values. 

We also established that politics might be interesting to use as subject in order to get some common ground in the images. Only the country seemed quite minimal to us.
