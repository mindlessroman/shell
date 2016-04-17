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

#zsh - 1-indexes
#exploe the string into an array
#check for letters? if we're assuming clean input, then whatever

echo "Is the provided number a valid ISBN?:"
