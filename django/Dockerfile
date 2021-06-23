FROM ubuntu:18.04

RUN apt update
RUN apt install -y python3-virtualenv \
                     build-essential \
                     python3.8-dev \ 
                     libpcre3 \
                     libpcre3-dev \
                     nginx \
                     python3-pip \
                     git \
                     vim

#RUN git clone https://www.github.com/vvahut/django_test.git
RUN mkdir -p /home
ADD . / /home/django_test/

WORKDIR /home/django_test
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["/usr/local/bin/uwsgi", "--ini", "/home/django_test/uwsgi.ini"]

#RUN cp default /etc/nginx/sites-available
#RUN cp uwsgi.service /etc/systemd/system
#RUN systemctl restart nginx
#RUN systemctl restart uwsgi

#EXPOSE 80
