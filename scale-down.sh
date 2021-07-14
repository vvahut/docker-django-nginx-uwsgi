kubectl scale -n default deployment stack-nginx --replicas=0
kubectl scale -n default deployment stack-django --replicas=0 
kubectl scale -n default deployment stack-next --replicas=0 
