kubectl create namespace qdrant
helm upgrade -i -n qdrant -f used-values.yaml qdrant-test qdrant/qdrant
