#!/bin/bash

# Check the status of common system services and report whether they are active.
# Provides a clear, readable summary of service states.

COMMON_SERVICES=(
    bluetooth.service
    cron.service
    NetworkManager.service
    dev-fuse.device
    dev-loop4.device
)

for service in "${COMMON_SERVICES[@]}"; do
    if systemctl is-active --quiet "$service"; then
    echo "$service active"
    else
    state=$(systemctl is-active "$service" 2>/dev/null)
    echo "$service $state"
    fi
done