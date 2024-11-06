input="$1"

if echo "$input" | grep -q '+'; then
	num1=$(echo "$input" | cut -d'+' -f1)
	num2=$(echo "$input" | cut -d'+' -f2)
	result=$((num1 + num2))
else
	num1=$(echo "$input" | cut -d'-' -f1)
	num2=$(echo "$input" | cut -d'-' -f2)
	result=$((num1 - num2))
fi

echo "$result"
