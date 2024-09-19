#!/bin/bash

export QUARTO_PROFILE=$1

cdir=`pwd`

echo Purging files in _book/$1
echo Rendering $1
rm -R $cdir/_book/$1
cd lang/$1
quarto render #--profile $i
cd $cdir




#quarto run scripts/move-files.r
#quarto render

# done in quarto.yml already 
#quarto run scripts/remove-files.r
#quarto run scripts/title-page.r