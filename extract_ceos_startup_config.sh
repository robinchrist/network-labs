#!/bin/bash

# Find the first clab-* directory
lab_dir=$(find . -maxdepth 1 -type d -name "clab-*" | head -n 1)

# Check if a lab directory was found
if [ -z "$lab_dir" ]; then
    echo "No clab-* directory found"
    exit 1
fi

echo "Using lab directory: $lab_dir"

# Find all startup-config files and copy them
find "$lab_dir" -type f -path "*/flash/startup-config" | while read -r config_file; do
    # Extract router name from path (second directory component after clab-*)
    router_name=$(echo "$config_file" | cut -d'/' -f3)

    # Copy and rename the file
    cp "$config_file" "${router_name}-startup-config.txt"
    echo "Copied: ${router_name}-startup-config.txt"
done

echo "Done!"
