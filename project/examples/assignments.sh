# first assignment
cat nytimes_humanities_tabbed.csv | awk -F '\t' '{print $3}' | sort | uniq -c | sort

# second assignment
cat nytimes_humanities_tabbed.csv | awk -F '\t' '{print $3}' | sort | uniq -c | sort -r

# third assignment
cat nytimes_humanities_tabbed.csv | awk -F '\t' '{print $1}' | cut -c 1-4 | sort | uniq -c | sort
cat nytimes_humanities_tabbed.csv | awk -F '\t' '{print $1}' | cut -c 1-3 | sort | uniq -c | sort

cat nytimes_humanities_tabbed.csv | awk -F '\t' '{print $1}' | sed -E 's/([0-9]{4})-.*/\1/'

# Fourth

