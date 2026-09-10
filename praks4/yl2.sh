#!/bin/bash

#Kasutab kasutaja poolt antud andmeid et arvutada kui palju on täis busse ja kui palju jääb ilma
echo "busside kalkulaator reisijate mahutamiseks"
echo
echo "Mitu reisijat on gruppis? "
read reisijad
echo "Bussi istmete arv? "
read istmed

#Kontroll kas kasutaja poolt antud andmed on kasutatavad
if [ "$reisijad" -lt 0 ] || [ "$istmed" -le 0 ]; then
    echo "Viga: reisijate arv peab olema 0 või suurem ja bussi istmete arv suurem kui 0."
    exit 1
fi

#taisbusside ja maha jäänute kalkulatsioon
taisbussid=`expr $reisijad / $istmed`
maha_jaanud=`expr $reisijad % $istmed`


# Kui reisijaid jäi üle, lisame ühe bussi juurde
if [ $maha_jaanud -gt 0 ]
then
    taisbussid=$((taisbussid + 1))
fi

echo
echo "Kokku on vaja $taisbussid bussi"
