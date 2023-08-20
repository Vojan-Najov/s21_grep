INTERACTIVE=0

while getopts ":i" o
do
	case "${o}" in
		i)
			INTERACTIVE=1
			;;
		*)
			echo "option i -- make tests interactive"
			;;
	esac 
done

if [ $INTERACTIVE -eq 1 ]; then
	echo; echo -e "\033[32mSTART GREP TESTS\033[0m (yes/no)?"
	tmpans=''
	read 'tmpans'
	if [[ "$tmpans" == "y" || "$tmpans" == "yes" ]]
	then
		echo
	  ./tests/test_grep.sh -s
	fi
else
	echo; echo -e "\033[32mSTART GREP TESTS\033[0m"
	sleep 10
	echo; ./tests/test_grep.sh -s
fi
	
if [ $INTERACTIVE -eq 1 ]; then
	echo; echo -e "\033[32mSTART GREP MEMORY TESTS\033[0m (yes/no)?"
	tmpans=''
	read 'tmpans'
	if [[ "$tmpans" == "y" || "$tmpans" == "yes" ]]
	then
		echo; ./tests/test_grep.sh -s -m valgrind
	fi
else
	echo; echo -e "\033[32mSTART GREP MEMORY TESTS\033[0m"
	sleep 10
	echo; ./tests/test_grep.sh -s -m valgrind -a
fi
