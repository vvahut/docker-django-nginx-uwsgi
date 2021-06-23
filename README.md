# Docker-Django-Nginx-Uwsgi

Docker-Django-Nginx-Uwsgi on testiprojekti dockeroidulle
uwsgi-rajapintaa käyttävälle Django-esimerkkiprojektille, 
jota käytetään yhdessä dockeroidun Nginx
reverse proxyn kanssa.

## Asennus ja valmistelu

```bash
sudo snap install docker
sudo docker build nginx -t nginx_test
sudo docker build django -t django_test
```

## Ajaminen

```bash
sudo docker network create net1 
sudo docker run -d --net=net1 --name nginx_test -p 80:80 nginx_test
sudo docker run -d --net=net1 --name django_test -p 8080:8080 django_test
```
