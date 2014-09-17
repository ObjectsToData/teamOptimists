IFS=$'\n'
FILE=$1
START=$2
END=$3
cat $FILE | sed -E 's/([0-9]{4})-/\1'$'\t''\1-/' | awk -F '\t' '{if ($1 >= '$START' && $1 <= '$END') print}' | sed -E 's/[0-9]{4}.//'
