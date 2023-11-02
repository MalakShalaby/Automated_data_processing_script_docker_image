#!/bin/bash

# Define the container name
CONTAINER_ID="3879125998b7"  # Replace with your container name

# Define the source directory within the container
CONTAINER_DIR="/home/doc-bd-a1"
LOCAL_DIR="bd-a1/service-result"

# Define the local directory where you want to copy the files
mkdir -p $LOCAL_DIR

# Copy the output files from the container to the local directory
docker cp "$CONTAINER_ID:$CONTAINER_DIR/res_dpre.csv" "$LOCAL_DIR"
docker cp "$CONTAINER_ID:$CONTAINER_DIR/eda-in-1.txt" "$LOCAL_DIR"
docker cp "$CONTAINER_ID:$CONTAINER_DIR/eda-in-2.txt" "$LOCAL_DIR"
docker cp "$CONTAINER_ID:$CONTAINER_DIR/eda-in-3.txt" "$LOCAL_DIR"
docker cp "$CONTAINER_ID:$CONTAINER_DIR/vis.png" "$LOCAL_DIR"
docker cp "$CONTAINER_ID:$CONTAINER_DIR/k.txt" "$LOCAL_DIR"

# Close the container
docker stop "$CONTAINER_ID"

