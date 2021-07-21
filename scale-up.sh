kubectl scale -n default statefulset stack-nginx --replicas=1
kubectl scale -n default statefulset stack-django --replicas=1
kubectl scale -n default statefulset stack-next --replicas=1
