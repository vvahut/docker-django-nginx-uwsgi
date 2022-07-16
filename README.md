# Docker-Django-Kubernetes-Next.js-Nginx-Uwsgi

Docker-Django-Kubernetes-Nextjs-Nginx-Uwsgi is test project stack
that consists of dockerized Django Rest Framework + uwsgi, Kubernetes, Next.js,
and Nginx reverse proxy.

## TODO

- Have to see whether intialization (initContainers & scripts) could be done better

## Installation

```bash
sudo snap install docker
brew install minikube
```
Also install Docker-compose from:
https://docs.docker.com/compose/install/

## Prepare & Run

```bash
minikube start
eval $(minikube -p minikube docker-env)
docker-compose build
kubectl apply --recursive -f ./kubernetes
```
You may need to load images manually to Minikube after building them
with `minikube image load ...`.

## Update containers

```bash
./scale-down.sh
kubectl apply --recursive -f ./kubernetes
./scale-up.sh
```

