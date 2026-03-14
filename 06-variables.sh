#!/bin/bash

TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

echo "Script executed at: $TIMESTAMP"

sleep 10
END_TIMESTAMP=$(date)
echo "Script completed at: $END_TIMESTAMP"
TOTAL_TIME=$(( $(date -d "$END_TIMESTAMP" +%s) - $(date -d "$TIMESTAMP" +%s) ))
echo "Script completed after $TOTAL_TIME seconds."