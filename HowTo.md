# install Applications on OCP with ArgoCD

### 1. Install open liberty operator

### 2. Create namespace for argocd

```
    kubectl create namespace argocd
```

### 3. Create Argocd from OCP operators

### 4. Get Argocd sercret from secrets/argocd-cluster

### 5. Get Argocd route and access using admin/password from secrets/argocd-cluster

### 6. Create the liberty namespace with option for argo to manage it.

### 4. Add all to github

### 5. cd to deployment/liberty

```
    kubectl apply -f liberty-app.yaml
```

> Notes:

Login to openshift
oc login <openshift-cluster-url> --token=<your-token>

---

Apply Kustomization file
kubectl apply -k .
kubectl delete -k .

---

To see what happens if you apply without actually applyig the changes
kubectl apply -k . --dry-run=client

---

Get Argocd sercret from secrets/argocd-cluster

---

oc apply -f jpa20cdiwar.yaml
oc delete -f jpa20cdiwar.yaml

---

kubectl patch app jpa20cdiwar -n argocd --type='json' -p='[{"op": "replace", "path": "/spec/syncPolicy", "value":{"automated": {}}}]'
