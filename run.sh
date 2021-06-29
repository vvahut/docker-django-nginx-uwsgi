#!/bin/bash

sudo docker rm -f nginx_test
sudo docker rm -f django_test
sudo docker network create net1
sudo docker run -d --net=net1 --name django_test django_test
sudo docker run -d --net=net1 --name nginx_test -p 80:80 --volumes-from django_test nginx_test
