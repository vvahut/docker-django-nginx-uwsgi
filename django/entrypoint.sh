#!/bin/bash
#cp -r /home/django_test/static/. /home/django_test/static_volume
python3.8 manage.py migrate
python3.8 manage.py collectstatic
exec /usr/local/bin/uwsgi --ini "/home/django_test/uwsgi.ini"
