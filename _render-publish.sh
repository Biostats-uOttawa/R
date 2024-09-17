#!/bin/bash

lang=("en" "fr") 

cdir=`pwd`

for i in "${lang[@]}"; do
  echo Purging files in _book/$i
  echo Rendering $i
    rm -R $cdir/_book/$i
  export QUARTO_PROFILE=$i
  cd lang/$i
  quarto render --profile $i
  cd $cdir
done

  echo Done rendering now fixing links

quarto run scripts/fix-links.r "${lang[@]}"

  echo Now deploying to github-pages

npm run deploy
