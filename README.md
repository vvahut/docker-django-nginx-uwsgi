# Docker-Django-Nginx-Uwsgi

Docker-Django-Nginx-Uwsgi on testiprojekti dockeroidulle
uwsgi-rajapintaa käyttävälle Django-esimerkkiprojektille, 
jota käytetään yhdessä dockeroidun Nginx
reverse proxyn kanssa.

## Asennus ja valmistelu

```bash
sudo snap install docker
```
Asenna lisäksi Docker-compose osoitteesta:
https://docs.docker.com/compose/install/


## Ajaminen

```bash
sudo docker-compose up -d 
```
