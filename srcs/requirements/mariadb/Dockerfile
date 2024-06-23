FROM debian:oldstable

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y mariadb-server gettext

COPY conf/dbconf.sh /dbconf.sh

COPY conf/init.template.sql /init.template.sql

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x dbconf.sh

RUN mkdir -p /run/mysqld && \
    chown -R mysql:mysql /run/mysqld && \
	chown -R mysql:mysql /var/lib/mysql

EXPOSE 3306

ENTRYPOINT [ "/dbconf.sh" ]