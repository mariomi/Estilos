#!/bin/bash

# Directory where odoo-bin should be executed from
WORK_DIR="/home/estilos/Estilos/odoo"

# Path to odoo-bin
ODOO_BIN="odoo-bin"

# Change to the working directory
cd "$WORK_DIR"

while true; do
    # Check if odoo-bin is already running
    if ! pgrep -f "$ODOO_BIN --addons-path=addons" > /dev/null; then
        echo "Starting Odoo app..."
        # Execute odoo-bin with Python3
        python3 $ODOO_BIN --addons-path=addons
    else
        echo "Odoo app is already running."
    fi
    # Check the app status every hour
    sleep 3600
done
