#!/bin/bash

# Set the path to your YAML file
YAML_FILE_PATH=$1

# Apply the YAML file to the Kubernetes cluster
if [ -f "$YAML_FILE_PATH" ]; then
  echo "Applying YAML file: $YAML_FILE_PATH"
  kubectl apply -f "namespace.yaml"
else
  echo "YAML file not found: $YAML_FILE_PATH"
  exit 1
fi
