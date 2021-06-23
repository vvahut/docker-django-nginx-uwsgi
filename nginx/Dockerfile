FROM nginx

RUN apt update
RUN apt install -y git

COPY default /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
