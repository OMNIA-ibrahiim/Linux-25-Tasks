#!/bin/bash

echo "Enter a starting number to start a countdown!"

read num

for (( i=num ; i>=1 ; i-- ));
do 
   echo "Number: $i"
done
