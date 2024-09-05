#!/bin/sh 

echo "Installing helm chart"
kubectl apply -f restore.yaml -n qdrant
echo "Installing helm chart"
helm upgrade -i -n qdrant qdrant-test-restore -f used-values.yaml qdrant/qdrant
