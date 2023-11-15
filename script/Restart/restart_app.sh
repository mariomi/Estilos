#!/bin/bash

# Sostituisci questo con il percorso della directory da cui deve essere eseguito il comando
cd Estilos/odoo/

while true; do
    # Controlla se odoo-bin è già in esecuzione
    if ! pgrep -f "odoo-bin --addons-path=addons" > /dev/null; then
        echo "Avvio dell'app..."
        python3 odoo-bin --addons-path=addons
    else
        echo "L'app è già in esecuzione."
    fi
    echo "Controllo lo stato dell'app..."
    sleep 10  # Controlla ogni 10 secondi, puoi modificare questo intervallo
done
