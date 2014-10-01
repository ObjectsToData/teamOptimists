# select only articles published in 1966
./select_year.sh nytimes_humanities_tabbed.csv 1966 > nytimes_humanities_1966.csv
# Select articles published in the 1960s
./select_period.sh nytimes_humanities_tabbed.csv 1960 1969 > nytimes_humanities_1960s.csv
# select articles published in 2012
./select_period.sh nytimes_humanities_tabbed.csv 2012 2012 > nytimes_humanities_2012.csv

# show the number of articles in each csv file
wc -l nytimes_humanities_*.csv

# count the number of articles per year, by sort by frequency and store the output in a new file
./add_year_column.sh nytimes_humanities_tabbed.csv | awk '{print $1}' | sort -g | uniq -c | sort -g | awk '{print $2 "\t" $1}' > nytimes_articles_per_year.csv

# count the number of articles per decade, sort by frequency and store the output in a new file
./add_year_column.sh nytimes_humanities_tabbed.csv | awk '{print int($1/10)*10}' | sort -g | uniq -c | sort -g | awk '{print $2 "\t" $1}' > nytimes_articles_per_decade.csv

# The number of articles per decade is very high in the 70s and 80s then drops again. What could be the reason for this?
