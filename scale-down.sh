kubectl scale -n default statefulset stack-nginx --replicas=0
kubectl scale -n default statefulset stack-django --replicas=0
kubectl scale -n default statefulset stack-next --replicas=0
