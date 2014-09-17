IFS=$'\n'
FILE=$1
SECTION=$2
cat $FILE | awk -F '\t' '{if ($8 ~ '$YEAR') print}'


