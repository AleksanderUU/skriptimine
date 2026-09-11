#!/bin/bash

#loob muutuja osch ja siis küsib kasutajalt kumba OSi kasutada soovib
osch=0
echo "1. Unix (Sun Os)"
echo "2. Linux (Red Hat)"
echo -n "Select your os choice [1 or 2]? "
read osch

#Kui kasutaja valib 1 või 2 siis vastab korrektselt mida valis
#Kui kasutaja ei vali või paneb midagi muud tuleb vastuseks kas talle ei sobi UNIX/Linux
if [ "$osch" = "1" ]; then
    echo "You Pick up Unix (Sun Os)"
elif [ "$osch" = "2" ]; then
    echo "You Pick up Linux (Red Hat)"
else
    echo "What you don't like Unix/Linux OS?"
fi
