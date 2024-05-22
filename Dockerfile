FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE world
ADD ./dump-hibernate-final.sql /docker-entrypoint-initdb.d