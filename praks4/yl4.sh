#!/bin/bash
# Skript kontrollib käsurealt sisestatud täisarvu paarsust (kas arv on paaris või paaritu).

if [ $# -ne 1 ]; then
    echo "Kaivita see skript koos arvuga mille paarsus soovid kontrollida. Näiteks: $0 3"
else
    arv=$1
    jaak=$(( arv % 2 ))
    if [ $jaak -eq 0 ]; then
        echo "Antud arv on paaris"
    else
        echo "Antud arv on paaritu"
    fi
fi
