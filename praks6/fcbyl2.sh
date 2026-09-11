#!/bin/bash
while true; do
  read -p "Sisesta number (lõpetamiseks 0): " number

  # Kontrolli, kas sisestati 0
  if [[ "$number" -eq 0 ]]; then
    echo "Lopetan..."
    break
  fi

  # Kui number on negatiivne, jata vahele
  if [[ "$number" -lt 0 ]]; then
    echo "Negatiivne number ($number) - jatan vahele!"
    continue
  fi

  echo "Sisestasid positiivse arvu: $number"
done
