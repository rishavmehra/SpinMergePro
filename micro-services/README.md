## HELM

```
helm install example-app example-app
# list our releases

helm list
```

Rename values.yaml to `example-app.values.yaml` Create our second app values file `example-app-02.values.yaml`

`helm install example-app-02 example-app --values ./example-app/example-app-02.values.yaml`

## KUSTOMIZE

```
kubectl kustomize .\kubernetes\kustomize\ | kubectl apply -f -
# OR
kubectl apply -k .\kubernetes\kustomize\
```
