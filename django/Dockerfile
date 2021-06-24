FROM ubuntu:18.04

RUN apt update
RUN apt install -y python3-virtualenv \
                     build-essential \
                     python3.8-dev \ 
                     libpcre3 \
                     libpcre3-dev \
                     python3-pip \
                     git \
                     vim

#RUN git clone https://www.github.com/vvahut/django_test.git
RUN mkdir -p /home
ADD . / /home/django_test/

WORKDIR /home/django_test
RUN pip3 install --no-cache-dir -r requirements.txt && \
    python3 manage.py migrate && \
    python3 manage.py collectstatic --noinput

VOLUME /home/django_test/static

CMD ["/usr/local/bin/uwsgi", "--ini", "/home/django_test/uwsgi.ini"]
EXPOSE 8000
