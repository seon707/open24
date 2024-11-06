echo "Starting the program."

run_ls() {
	echo "Entered the function."
	ls "$@"
}

run_ls "$@"
echo "Ending the program."
