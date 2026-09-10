#!/bin/bash
#küsib kasutajal kellaaega ja tervitab õiges päeva olekus

#Küsib kasutaja käest kella
echo -e "Sisesta aja väärtus: "
read aeg

#Kontrollib kasutaja käest saadud numbrit ja et kas see on tegelik kella aeg
if test $aeg -ge 6 -a $aeg -lt 12
then
echo "Tere hommikust!"
elif test $aeg -ge 12 -a $aeg -lt 18
then
echo "Tere päevast!"
elif test $aeg -ge 18 -a $aeg -lt 22
then
echo "Tere õhtust!"
elif test $aeg -ge 22 -a $aeg -lt 24 || test $aeg -ge 0 -a $aeg -lt 6
then
echo "Head ööd!"
#kui kellaeg pole reaalne siis vastab seda
else
echo "Vale sisend"
fi
