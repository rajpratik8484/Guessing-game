echo 'Welcome to the game'
echo 'The goal is to guess how many folders are in this directory'
echo 'So how many files are there?'

nbrfile=$(ls | wc -l)
condition=true

function is_correct {
	if [[ $1 -gt $2 ]] 
	then
		echo 'Too high'
		echo 'Please retry : '
	elif [[ $1 -lt $2 ]] 
	then
		echo 'Too low'
		echo 'Please retry : '
	else 
		echo 'YOU WIN'
		condition=false
	fi

}

while $condition 
do
	read response
	is_correct $response $nbrfile
done
