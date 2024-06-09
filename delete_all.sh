kubectl delete pods -l app=postgres
kubectl delete pods -l app=nextcloud
kubectl delete deployments nextcloud
kubectl delete secret nextcloud-secret
kubectl delete configmap nextcloud-configmap
kubectl delete deployments postgres
kubectl delete secret postgres-secret
kubectl delete configmap postgres-configmap
kubectl delete service postgres-service