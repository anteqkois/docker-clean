#!/bin/sh

# Run the Node.js application in teh background
node ./build/index.js &

# Capture the PID of the Node.js application
NODE_PID=$!

# Wait for 5 seconds
sleep 15

# Clear file
> ./.env

# Wait for the Node.js application to finish (if needed)
wait $NODE_PID