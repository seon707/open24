echo "Is Linux fun? (yes / no)"
read answer

case $answer in
	yes|Yes|y|Y)
		echo "yes"
		;;
	no|NO|n|N|nonono)
		echo "no"
		;;
	*)
		echo "Please answer with yes or no."
esac
