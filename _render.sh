#!/bin/bash

export QUARTO_PROFILE=$1
quarto run scripts/move-files.r
quarto render

# done in quarto.yml already 
quarto run scripts/remove-files.r
quarto run scripts/title-page.r