#!/bin/bash

export QUARTO_PROFILE=$1
quarto run scripts/_move-files.r
quarto render

# done in quarto.yml already 
quarto run scripts/_remove-files.r
quarto run scripts/_title-page.r