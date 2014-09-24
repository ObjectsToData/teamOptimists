# Proposal 24 sept - RJ version

This is what I got from today, focussed on the concrete.

## Representation of country's by images in the New York Times

### Question:
Does a plot of images about a certain subjects over country's say something interesting?

### Value:
Very important.

### Steps:

#### Data retrieval
Rewrite the crawling script to get the first 500 images of each county/subject.

1. Get list of countries with geolocation boundaries.
2. Use these country's as search query + a subject to narrow it down.
3. Write a loop to get only the first 100 images and stop requesting after, and only store those as result. Expect that it will take about 300-400 hits to get 100 images. 10000 is max, so we'll be able to do about 20 country's/day/account. 
4. Pull the images from the url's in the dataset

#### Visualizing
Displaying the pictures on a world map to spot patterns. 

1. Combine the country's geolocation information with the images local source locations in one csv file.
2. Transform the geolocation information to valid plotting locations for each image. Interesting step, but also the most mathematical one. It's probably done before many times before though, so we can steal it.
3. Feed it to Imageplot in imageJ and enjoy the show.

#### Interpreting
Are there interesting patterns? Should we feed it another set of images? Does this actually say something or is it utter nonsense? Probably the latter, but we'll have a pretty picture. 