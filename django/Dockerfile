FROM ubuntu:18.04

SHELL ["/bin/bash", "-c"]

ENV TZ=Europe/Helsinki
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && \
    apt install -y python3.8-venv \
                   build-essential \
                   python3.8-dev \
                   libpcre3 \
                   libpcre3-dev \
                   python3-pip \
                   git \
                   vim \
                   libpq-dev \
                   postgresql \
                   postgresql-contrib

#RUN git clone https://www.github.com/vvahut/django_test.git
RUN mkdir -p /home
#ADD . / /home/django_test/
ADD django_test/ /home/

COPY requirements.txt /home/django_test/
#COPY . /Dockerfile /home/django_test/
COPY manage.py /home/django_test/

WORKDIR /home/django_test

RUN python3.8 -m venv venv
RUN source venv/bin/activate
RUN python3.8 -m pip install --upgrade pip setuptools
RUN python3.8 -m pip install --no-cache-dir -r requirements.txt
#RUN python3.8 manage.py migrate
#RUN python3.8 manage.py collectstatic --noinput

RUN chown -R www-data:www-data /home/django_test

ENV DJANGO_SUPERUSER_PASSWORD=admin
ENV DJANGO_SUPERUSER_USERNAME=admin
ENV DJANGO_SUPERUSER_EMAIL=admin@email.com

#RUN python3.8 manage.py createsuperuser --no-input

COPY . / /home/django_test/
RUN ["chmod", "+x", "/home/django_test/entrypoint.sh"]
ENTRYPOINT ["/home/django_test/entrypoint.sh"]
