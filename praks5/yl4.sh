#!/bin/bash
#küsib kasutajal kellaaega ja tervitab õiges päeva olekus

#Kontrollib praegust arvuti kellaega
aeg=$(date +"%H")
name=$(whoami)

#Kontrollib kellaega ja vastab õige kellajalise tervitusega
if test $aeg -ge 6 -a $aeg -lt 12
then
echo "Tere hommikust $name!"
elif test $aeg -ge 12 -a $aeg -lt 18
then
echo "Tere päevast $name!"
elif test $aeg -ge 18 -a $aeg -lt 22
then
echo "Tere õhtust $name!"
elif test $aeg -ge 22 -a $aeg -lt 24 || test $aeg -ge 0 -a $aeg -lt 6
then
echo "Head ööd $name!"
fi
