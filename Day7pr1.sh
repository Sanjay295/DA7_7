MAXCOUNT=10
count=1
#Array name is number

while [ "$count" -le $MAXCOUNT ]; do
 number[$count]=$(( ( RANDOM % 10 ) + 100 ))
 let "count += 1"
done

echo "${number[*]}"

INTMAX=1000

first=second=$INTMAX

for (( i = 0; i < ${#number[@]}; i++ ))
do
if [[ $number[$i] < $first ]]
then
$second = $first
$first = $number[$i]
elif [[ $number[$i] < $second && $number[$i] != $first ]]
then
$second = $number[$i]
fi
if [[ $second == $INTMAX ]]
then
echo "There is no second smallest element"
else
echo "the smallest element is " $first
echo "the second smallest element is " $second 
fi