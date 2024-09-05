#!/bin/sh 

echo "Installing helm chart"
kubectl apply -f restore.yaml -n qdrant
helm install -n qdrant qdrant-test-restore -f used-values.yaml .
