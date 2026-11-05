#!/bin/bash
 
CSV="data/ghost_hosts.csv"
 
if [ ! -f "$CSV" ]; then
echo "Error: no s'ha trobat el fitxer $CSV"
exit 1
fi
 
echo "Iniciant analisi de ports infectats..."
 
tail -n +2 "$CSV" | while IFS=',' read -r ip amenaca risc port
do
case "$port" in
22|80|443|3389)
echo "ALERTA: $ip - $amenaca - Port critic infectat: $port"
;;
*)
echo "DESCARTAT: $ip*- Port no critic: $port"
* ;;
esac
done
