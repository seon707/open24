DIR_NAME=$1

if [ ! -d "$DIR_NAME" ]; then
	mkdir "$DIR_NAME"
fi

cd "$DIR_NAME"
touch file0.txt file1.txt file2.txt file3.txt file4.txt

UNPACK_DIR="files"
if [ ! -d "$UNPACK_DIR" ]; then
	mkdir "$UNPACK_DIR"
fi
tar -cvf "$UNPACK_DIR/files.tar" file0.txt file1.txt file2.txt file3.txt file4.txt > /dev/null 2>&1

cd "$UNPACK_DIR"
tar -xvf files.tar > /dev/null 2>&1

ls ../
ls -1
