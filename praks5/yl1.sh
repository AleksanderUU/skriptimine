#!/bin/bash
#Skript kontrollib ja vastab mis vanuse kruppi kasutaja kuulub

#Küsib kasutaja vanust ja jättab selle mällu
echo -n "Sisesta oma vanus: "
read vanus

#Kontrollib kasutaja poolt antud vanust, mis vanuse kruppi kuulub ja kas antud vanus on õigesti kirjas
if test $vanus -gt 0 -a $vanus -lt 11
then
echo "oled laps"
elif test $vanus -ge 11 -a $vanus -lt 18
then
echo "oled nooruk"
elif test $vanus -ge 18 -a $vanus -lt 63
then
echo "oled täiskasvanu"
elif test $vanus -ge 63
then
echo "oled senioor"
else
echo "vigane sisend"
fi
