FROM nginx

RUN apt update
RUN apt install -y git

RUN mkdir -p /etc/nginx/sites-available
COPY default /etc/nginx/nginx.conf
#ADD default /etc/nginx/sites-available/

#EXPOSE 

#COPY index.html /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]
