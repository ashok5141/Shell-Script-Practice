#!/bin/bash

TIMESTAMP=$(date)

echo "Script executed at: $TIMESTAMP"

sleep 10
END_TIMESTAMP=$(date)
TOTAL_TIME=$(( $(date -d "$END_TIMESTAMP" +%s) - $(date -d "$TIMESTAMP" +%s) ))
echo "Script completed after $TOTAL_TIME seconds."