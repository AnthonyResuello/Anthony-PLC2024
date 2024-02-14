#!/bin/bash

set -e

function progress {
  
    echo " "
    echo " "
    echo "-------------------------------------------"
    echo "-------" $1
    echo "-------------------------------------------"
    echo " "
    echo " "

}

program_file=$1
if [ ! -r "$1" ]
then 
    echo "You used $0 incorrectly.  Please call it with a valid C++ file as follows:"
    echo "   bash $0 <file-name>.cpp"
else


    g++ $program_file

    set +e
    progress 'starting the program'
    ./a.out
    progress 'program stopped'
fi
