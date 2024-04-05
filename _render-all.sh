#!/bin/bash

lang=("en" "fr") 

for i in "${lang[@]}"; do
  echo Rendering $i
  export QUARTO_PROFILE=$i
  quarto run scripts/move-files.r
  quarto render
  
  # done in quarto.yml already 
  quarto run scripts/remove-files.r
  quarto run scripts/title-page.r

done

  echo Done rendering now fixing links

quarto run scripts/fix-links.r "${lang[@]}"