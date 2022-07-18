#!/bin/bash
#cp -r /home/django_test/static/. /home/django_test/static_volume
set -x
python3.8 manage.py migrate
python3.8 manage.py collectstatic --noinput
