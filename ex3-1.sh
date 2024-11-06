if [ -z "$1" ]; then
	count=10
else
	count=$1
fi

i=0
while [ $i -lt $count ]
do
	echo "hello world"
	i=$((i + 1))
done
