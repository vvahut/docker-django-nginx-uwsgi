/bin/sh delete.sh
minikube image rm docker-django-nginx-uwsgi_stack-django
minikube image load docker-django-nginx-uwsgi_stack-django
kubectl apply --recursive -f ./kubernetes

