#!/usr/bin/env bash

function compare_numbers  {

	read input_num
	local number=3

	if [[ $input_num = $number ]]
	then
		result="Correct"

	elif [[ $input_num -gt $number ]]
	then
		result="Greater"
	else
		result="Lower"
	fi
	echo $result
}

continue_game="Yes"

echo ">>> Welcome to the Guessing Game! <<<"
echo "Guess how many files are in the current directory?"

while  [[ $continue_game = "Yes" ]]
do
	output=$(compare_numbers)

	if [[ $output = "Correct" ]]
	then
		echo "Congratulations! Your answer is correct!"
		let continue_game="No"

	elif [[ $output = "Greater" ]]
	then
		echo "Your answer was too high! Try again:"

	elif [[ $output = "Lower" ]]
	then
		echo "Your answer was to low... try again:"
	fi
done
echo "END OF THE GAME"
echo "Thanks for playing :) "
