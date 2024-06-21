FROM debian:oldstable

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y nginx openssl curl

RUN mkdir -p /etc/nginx/ssl/certs

RUN openssl req -newkey rsa:4096 -days 42 -nodes -sha256 -x509 -out /etc/nginx/ssl/certs/gsilva.crt -keyout /etc/nginx/ssl/certs/gsilva.key -subj "/C=PT/ST=Lisboa/L=Lisboa/O=42/OU=42Lisboa/CN=gsilva.42.fr/UID=gsilva"

COPY conf/server.conf /etc/nginx/conf.d

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
