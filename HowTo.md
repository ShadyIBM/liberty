# install Applications on OCP with ArgoCD

### 1. Install open liberty operator

### 2. Create namespace for argocd

```
    kubectl create namespace argocd
```

### 3. Create Argocd from OCP operators

### 4. Get Argocd sercret from secrets/argocd-cluster

### 5. Get Argocd route and access using admin/password from secrets/argocd-cluster

### 5. cd to deployment/liberty

### 6. Create the liberty namespace with option for argo to manage it.

```
    kubectl apply -f namespace.yaml
    OR
    ./apply-namespace.sh
```

### 4. Add all to github

### 5. cd to deployment/liberty

```
    kubectl apply -f liberty-app.yaml
    OR
    kubectl apply -k .
```

> Notes:
> Any future chnage to the liberty app will be applied and refected in Argocd.

> Argocd Instance

> https://argocd-server-openshift-operators.itzroks-664003h6xc-qalcq8-6ccd7f378ae819553d37d5f2ee142bd6-0000.us-south.containers.appdomain.cloud/applications?showFavorites=false&proj=&sync=&autoSync=&health=&namespace=&cluster=&labels=

---

## EOF

---

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
