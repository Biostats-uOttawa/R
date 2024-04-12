#!/bin/bash

lang=("en" "fr") 

quarto run scripts/fix-links.r "${lang[@]}"