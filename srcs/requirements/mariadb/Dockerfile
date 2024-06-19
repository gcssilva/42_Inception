FROM debian:oldstable

RUN apt-get update -y && apt-get upgrade -y && apt-get install mariadb-server -y

COPY conf/dbconf.sh /dbconf.sh