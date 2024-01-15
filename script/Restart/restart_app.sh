
#!/bin/bash

# Cambia la directory di lavoro nella directory da cui deve essere eseguito odoo-bin
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
    sleep 3600  # Controlla ogni 10 secondi, puoi modificare questo intervallo
done


