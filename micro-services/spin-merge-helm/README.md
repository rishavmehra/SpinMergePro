# Helm

## Usage

[Helm](https://helm.sh) must be installed to use the charts. Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```
helm repo add Spin-merge https://rishavmehra.github.io/SpinMergePro/
helm install cluster-spin-merge-helm  Spin-merge/spin-merge-helm

```

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages. You can then run `helm search repo
<alias>` to see the charts.

To install the <chart-name> chart:

```
kubectl create ns spin-merge
helm repo add cluster-spin-merge-helm https://rishavmehra.github.io/SpinMergePro/
helm install cluster-spin-merge-helm Spin-merge/spin-merge-helm
```

To uninstall the chart:

    helm delete cluster-spin-merge-helm

Credits:[ Rishav Mehra](https://github.com/rishavmehra)
