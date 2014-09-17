#!/bin/sh

# override default field separator
IFS=$'\n'

# parse first command line argument as filename
FILENAME=$1

# initialise counter
count=0

echo "year\tsection\tsection" > "nytimes.section.cooc.tsv"
echo "year\tsection" > "nytimes.section.tsv"

# Loop through lines in file
for line in `cat $FILENAME`
do
	# count number of lines
	let count++

	# extract year information
	year=$(echo $line | sed -E 's/-.*//')

	# extract section information
	sections=$(echo $line | awk -F '\t' '{print $8}')

	# split multiple sections and store them in an array/list
	secArray=(`echo $sections | sed -E 's/; /\'$'\n/g' | sort`)
	numSec=${#secArray[@]}

	# iterate over all sections in the list
	for ((i = 0; i < $numSec; i++))
	do
		# iterate over all sections in the list after the ith section
		for ((j = i+1; j < $numSec; j++))
		do
			# show the year and the co-occurrence of two sections
			echo "$year\t${secArray[$i]}\t${secArray[$j]}"
		# add all co-occurring pairs of sections to the
		# nytimes.section.cooc.tsv file
		done >> "nytimes.section.cooc.tsv"
		# show the year and each individual section and 
		# append it to the nytimes.section.tsv file
		echo "$year\t${secArray[$i]}" >> "nytimes.section.tsv"
	done 

	let rest=$(($count % 10))
	if [ $rest == 0 ]; then
		echo "$count lines processed"
	fi
done

echo "Total $count lines read\n"
