#!/bin/bash
 
CSV="data/ghost_hosts.csv"
 
if [ ! -f "$CSV" ]; then
echo "Error: no s'ha trobat el fitxer $CSV"
exit 1
fi
 
echo "Iniciant analisi d'amenaces..."
 
tail -n +2 "$CSV" | while IFS=',' read -r ip amenaca risc
do
echo "Analitzant $ip - $amenaca - Risc: $risc"
done
