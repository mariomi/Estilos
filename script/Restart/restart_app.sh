#!/bin/bash

<<<<<<< HEAD
# Cambia la directory di lavoro nella directory da cui deve essere eseguito odoo-bin
=======
# Sostituisci questo con il percorso della directory da cui deve essere eseguito il comando
>>>>>>> 0de21433af7ede7541d28b39f0fa91197778d5b8
cd /home/estilos/Estilos/odoo

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


