SEARCH_TERM=$1

DB_FILE="DB.txt"

if [ ! -f "DB.txt" ]; then
	exit 1
fi

grep "$SEARCH_TERM" "$DB_FILE"
