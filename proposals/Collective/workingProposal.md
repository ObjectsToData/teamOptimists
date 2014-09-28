# Working Proposal - teamOptimists.

## Research

**Question:**
How does the American newspaper *The New York Times* stereotype third world countries (like Iraq, Somalia and Bhirma etc,) through images in contemporary society in comparison to first world countries?

**Product:**
We hope to find a pattern in the images with the online articles. In order to look for patterns in the image we will visualize the images on a geographical map (interface).

**Theoretical Framework:**
- Digital Humanities
- Stuart Hall (Stereotype)

## Method

### Abstract
Compare images of first world countries (like USA and The Netherlands etc.) with third world countries by their geolocation tags and look for patterns.

### Concrete

**Data Retrieval & Parsing:**

1. Filtering: Defining search query, define list of countries (preferably with geolocation boundaries) and a meaningful theme to narrow it down  and increase the likelihood of meaningful hits. Use these country's as search query + a subject. 
2. Parsing: as the NYT sets clear limits on data retrieval we already need to parse the data while retrieving it. We will need to write a loop to make sure we stop requesting after the first 100 proper hits. We need to check wether the hit has both an image and a geotag. 
3. Next we will need to pull the images from the url's in the dataset and store those locally.

**Visualizing:**
In this step we are considering to break the group in half. That way we could interpret the results in two different visualizations. One group, for instance, could focus on the geolocations, while the other group has a focuses on another plot, time for instance.

1. Combine the country's geolocation information with the images local source locations in one csv file.
2. Transform the geolocation information to valid plotting locations for each image. Interesting step, but also the most mathematical one. It's probably done before many times before though, so we can steal it.
3. Feed it to Imageplot in imageJ and enjoy the show.

**Interpretation:**
We are creating a visualization that, we hope, will give a new insight. The last step will be to interpret this result. Is there actually a pattern? And what if there is, how trustworthy is it? Is it necessary to further expand the dataset? Is the geolocation tag a good pointer for the actual location of the picture? There are many questions that we will need to (re)consider in this fase. 

## Progress

From previous explorations on the dataset we found that the use of images in the online articles of the NYT is a bit minimal at times. Mostly the pictures from the Humanities dataset include faces. 

We already explored the set using jq. This yielded us the geolocation tags. They are part of the keywords. They can be accessed using the following command:

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
