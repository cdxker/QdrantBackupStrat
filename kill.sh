#!/bin/sh 

echo "Removing helm chart"
helm uninstall -n qdrant qdrant-test-restore
echo "Deleting pvc's"
kubectl delete -n qdrant pvc/qdrant-storage-qdrant-test-restore-0 
kubectl delete -n qdrant pvc/qdrant-storage-qdrant-test-restore-1 
kubectl delete -n qdrant pvc/qdrant-storage-qdrant-test-restore-2 
