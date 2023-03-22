#! /bin/bash

echo -e "Which file you want to modify: \c"
read filename
if [[ -f $filename ]]
then
    echo -e "Enter the word you want to replace: \c"
    read word
    if grep -q $word $filename
    then
        echo -e "Enter the word you want: \c"
        read replace
        sed  "s/$word/$replace/g" $filename
    else
        echo "The word that you type doesn't exist"
    fi
else
    echo "The file doesn't exist"
fi
