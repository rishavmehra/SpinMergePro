kubectl delete -k micro-services/frontend 
kubectl delete -k micro-services/backend

kubectl delete ns spin-merge-ns
minikube delete -p spin-merge

minikube stop -p spin-merge