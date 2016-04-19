#!/bin/zsh

#take in number, strip dashes, refuse more than 10 digits
#do a test
#return true if valid isbn
#return false if invalid isbn

# @TODO: encase in a do-while - guarantees one run
echo "ISBN Validator"
echo -n "Number series to Validate:"
read intake
echo "Input entered: $intake"

# @TODO: case statement
if [[ -z $intake ]]; then
   echo "You entered an empty number string"
elif [[ ${#intake} -ne 10 ]]; then 
   echo "You entered a number string that has a length not equal to 10"
fi

#if [[ $intake =~ ]] #10digit number

#zsh - 0-indexes
#explode the string into an array
#check for letters? if we're assuming clean input, then whatever

#$index = 10
$is_valid = false
$total = 0

#not how for loops work apparently in shell
for (( i = 10; i >= 0; i++)); do
    $total = $total + (i * ${intake:i})  
done

if [[ $total % 11 -eq  0 ]]
    $is_valid = true
fi

echo -n "Is the provided number a valid ISBN?:"
echo $is_valid
