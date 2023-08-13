#!/bin/bash
set -e

echo "Starting minikube cluster"
minikube start --memory='3g' --nodes=2 -p spin-merge

echo "Details: list of  all minikube profile"
minikube profile list

echo "Details: minikube status for spin-merge profile"
minikube status -p spin-merge

echo "Creating namespace: spin-merge-ns"
kubectl create ns spin-merge-ns

echo "Using kustomize to deploy micro-services"
kubectl apply -k micro-services/backend
kubectl apply -k micro-services/frontend 

echo "exposing frontend service"
kubectl expose deploy spin-merge-frontend -n spin-merge-ns  --type=NodePort


echo "Exposed ip address and port for frontend service"
minikube service spin-merge-frontend --url -p spin-merge -n spin-merge-ns

