DIR_NAME=$1

if [ ! -d "$DIR_NAME" ]; then
	mkdir "$DIR_NAME"
fi

cd "$DIR_NAME"
touch file0.txt file1.txt file2.txt file3.txt file4.txt

for FILE in file*.txt; do
	SUBDIR="${FILE%.*}"
	if [ ! -d "$SUBDIR" ]; then
		mkdir "$SUBDIR"
	fi
	ln -s "../$FILE" "$SUBDIR/$FILE"
done
