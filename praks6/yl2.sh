#!/bin/bash
# Arvutab kasutaja sisestatud täisarvu numbrite summa

echo -n "Sisesta suvaline täisarv: "
read arv

algne=$arv
summa=0

while [ $arv -ne 0 ]
do
    jaak=$((arv % 10))
    summa=$((summa + jaak))
    arv=$((arv / 10))
done

echo "Arvu $algne numbrite summa on $summa"
