MAXCOUNT=10
count=1
#Array name is number

while [ "$count" -le $MAXCOUNT ]; do
 number[$count]=$(( ( RANDOM % 10 ) + 100 ))
 let "count += 1"
done

echo "${number[*]}"

secondGreatest=$(printf '%s\n' "${number[@]}" | sort -nu | tail -2 | head -1)
echo "Second Greatest element is " $secondGreatest

secondSmallest=$(printf '%s\n' "${number[@]}" | sort -nu | head -2 | tail -1)
echo "Second Smallest element is " $secondSmallest