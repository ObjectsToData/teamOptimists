*E. van Zummeren (10149880). Objects to Data*
*TITLE: The usage of black and white photography during recent major news events.*

# Introduction

In the earliest years of photography there was only black and white. The use of colours was often expensive and due to the dull toning, seemed to be less realistic than black and white photography. However, even with the introduction of cheap and realistic colour usage, there are still photographers who prefer the use of black and white over colour. Sometimes even newspapers have the habit of using black and white photography. The ‘Zilveren Camera’ 2012 winner, Eddy van Wessel, for instance used black and white to depict the victims of the Assad-regime.

Some newspapers tend to use black and white photography for some events, while they use colors for others. I’ve noticed this practice when I was looking at the photo’s of war photographer James Nachtwey. 99% percent of his work consisted out of black and white photography. While he used colors to depict the 9/11 attacks and the protests in Indonesia. If one looks at Google Images for 9/11 images, one will find mostly images filled with colours (http://bit.ly/1m2r93S). However when you look for images depicting the Rwanda civilian war, about half of the images consists of black and white (http://bit.ly/1s4SGxQ).

1. Research question I: What percentage of the photography used by the NYT in news event X was in colour, and how much was in black and white?

2. Research question II (main question): Why did the New York Times in some events used more black and white photography than in other events.

3. Why are these questions important from a humanities point of view?

A lot of events in our collective memories are remembered by photographs. For example, everyone knows the 'Napalm girl' or the 'Tank man' from Tiananmen-square. In both cases the images have a strong emotional appeal, and I think the black and white makes this emotional appeal only stronger. Therefore I think the usage of black and white is more than just a simple colour switch, but also a way to give an event a stronger emotional appeal or to historicize it. I think it would be interesting to know why a newspaper would do this.

## How would we conduct this research?
1) First we would have to select a few notable events in the recent past. 
2) Next we would determine their exact duration. This could be quite a challenge actually. In the case of 9/11 the starting date would be 11 September, however the ending date would be a lot harder to determine.
3) We would combine the answer of step 1 and 2, and pull the data from the NYT Article Search API. For example: Keyword; 11 September and look for all articles ranging from 11 September till December 2011 (end of the Iraqi war). 
4) We would filter the results, and remove the objects that do not contain an image-element.
5) In this step we would analyse the image of each different object and see if it’s black and white. Most electronic images are stored in a RGB colour format. This image format contains three different color channels ranging from 0 to 255. If all three channels have the same value it means the image is in black and white.
6) We would have to count every object that has a black and white image. This information could be stored in a variable.
7) Next we should count all the objects which have an image in them.
8) OBJECTS WITH B&W IMAGES / ALL OBJECTS * 100 = Out of all X objects, Y% of the objects have images that are in black and white.
9) Repeat all the steps for other events.
10) Compare and interpret results


