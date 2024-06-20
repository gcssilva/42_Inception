#!/bin/bash

if [ ! -d /run/mysqld ]
then
	mysql_install_db --basedir=/usr --datadir=/var/lib/mysql
fi

if [ ! -d init.sql ]
then
envsubst < init.template.sql > /init.sql
mysqld --user=mysql --bootstrap < init.sql
fi

exec mysqld --user=mysql --console