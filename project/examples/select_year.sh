IFS=$'\n'
FILE=$1
YEAR=$2
cat $FILE | awk -F '\t' '{if ($1 ~ '$YEAR') print}'
