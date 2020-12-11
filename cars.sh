#! /bin/bash
# cars.sh
# Thomas gooding
INPUT=0
while [ "$INPUT" -ne 3 ]
do 
	echo "Type '1' to enter a new car."
	echo "Type '2' to display a list of the cars."
	echo "Type '3' to quit and exit program."
	read -r INPUT
	case "$INPUT" in
		"1") echo "Type in year of car."
		read -r YEAR
		echo "Type in make of car."
		read -r MAKE
		echo "Type in model of car."
		read -r MODEL
		NEWCAR="$YEAR:$MAKE:$MODEL"
		echo "$NEWCAR" >> My_cars;;
		"2") sort My_cars;;
		"3") echo "Program finished";;
		*) echo "Not A valid Input. Try again.";;
	esac
done

