#!/bin/bash

#Arvutab mittu pakki küpsiseid peab ostma kui ka kui palju ühe ja kõigi kihtide peale kulub kokku, kasutaja poolt antud info baasil.
echo "Küpsisetordi küpsiste arvutaja"
echo
echo -n "Sisesta aluskandiku pikkus cm: "
read kandiku_pikkus
echo -n "Sisesta aluskandiku laius cm: "
read kandiku_laius
echo -n "Sisesta ühe küpsise pikkus cm: "
read kupsise_pikkus
echo -n "Sisesta ühe küpsise laius cm: "
read kupsise_laius
echo -n "Sisesta tordi kihtide arv: "
read kihid
echo -n "Sisesta küpsiste arv ühes pakis: "
read kupsiseid_pakis

# Arvutab ühe kihi küpsiste arvu.
# Jagamisel lisatakse jagajast üks väiksem arv, et tulemus ümarduks üles.
kupsiseid_pikkuses=`expr \( $kandiku_pikkus + $kupsise_pikkus - 1 \) / $kupsise_pikkus`
kupsiseid_laiuses=`expr \( $kandiku_laius + $kupsise_laius - 1 \) / $kupsise_laius`

kupsiseid_uhes_kihis=`expr $kupsiseid_pikkuses \* $kupsiseid_laiuses`
kupsiseid_kokku=`expr $kupsiseid_uhes_kihis \* $kihid`

# Arvutab vajalike pakkide arvu ja ümardab selle üles.
pakke_vaja=`expr \( $kupsiseid_kokku + $kupsiseid_pakis - 1 \) / $kupsiseid_pakis`

echo
echo "Ühes kihis on vaja $kupsiseid_uhes_kihis küpsist."
echo "$kihid kihi jaoks on vaja kokku $kupsiseid_kokku küpsist."
echo "Poest tuleb osta $pakke_vaja pakki küpsiseid."
