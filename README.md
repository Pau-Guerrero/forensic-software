# forensic-software
## Fase 1 - Agent 2
 
- S'ha investigat la branca `projecte/spectral-data`.
- El CSV conté les columnes `IP`, `Nom_Amenaca` i `Nivell_Risc`.
- S'ha creat l'script `scripts/exorcism.sh`.
- L'script depèn del contracte de dades establert per l'Agent 1

## Fase 1 - Agent 1

- S'ha creat el fitxer `data/ghost_hosts.csv`.
- El contracte inicial conté les columnes `IP`, `Nom_Amenaca` i `Nivell_Risc`.
- L'Agent 2 haurà d'utilitzar aquesta estructura en el seu script.


## Fase 2 - Investigació de la branca infectada

- S'ha investigat la branca `feature/nightmare-code`.
- S'ha localitzat el fitxer `scripts/nightmare.sh`.
- S'ha detectat l'ordre `rm -f data/ghost_hosts.csv`.
- Aquesta ordre podria eliminar el diccionari d'amenaces.
- La branca infectada no s'ha integrat a `main`.

