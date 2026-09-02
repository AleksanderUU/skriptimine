#Skript on loodud näitama tänase päeva kohta: päeva, kella, kalendrit kui ka praegust aastat.
echo
date +"Today is %A, %B %d, %Y"
date +"Time is %R"
echo
date +"Calendar of %B %Y"
cal | tail -7
