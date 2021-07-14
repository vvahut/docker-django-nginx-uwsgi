#!/bin/bash
#cp -r /home/django_test/static/. /home/django_test/static_volume
exec /usr/local/bin/uwsgi --ini "/home/django_test/uwsgi.ini"
