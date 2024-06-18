#!/bin/bash

lang=("en" "fr") 

for i in "${lang[@]}"; do
  echo Rendering $i
  export QUARTO_PROFILE=$i
  cd lang/$i
  quarto render --profile $i
  
done

  echo Done rendering now fixing links

quarto run scripts/fix-links.r "${lang[@]}"