#!/bin/bash

for (( valine=1; valine<=10; valine++ )); do
  echo "Väline tsükkel: $valine"

  # Käivitame sisemise tsükli taustal
  (
    for inner in {1..10}; do
      echo "  Sisemine i = $inner (väline: $valine)"
      sleep 0.1
    done
  ) &
  
  bg_pid=$! # Salvestame taustaprotsessi ID

  if [[ $valine -eq 5 ]]; then
    echo "Tsüklid jõudsid väärtuseni 5. Katkestan tsüklid"
    kill $bg_pid 2>/dev/null
    break
  fi

  wait $bg_pid 2>/dev/null
done

echo "Mõlemad tsüklid on katkestatud."
