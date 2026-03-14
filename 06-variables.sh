#!/bin/bash

TIMESTAMP=$(date +%S)

echo "Script executed at: $TIMESTAMP"

sleep 10
END_TIMESTAMP=$(date +%S)
echo "Script completed at: $END_TIMESTAMP"
TOTAL_TIME=$(( $END_TIMESTAMP - $TIMESTAMP ))
echo "Script completed after $TOTAL_TIME seconds."