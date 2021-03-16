
#getting base image for mysql is mysql:latest
FROM mysql:latest

#environment varible to root password
ENV MYSQL_ROOT_PASSWORD 1
#mysql database
ENV MYSQL_DATABASE pucsdstudents
#mysql user
ENV MYSQL_USER pucsd
#password for user 
ENV MYSQL_PASSWORD pucsd

#populate database with data 
#here i use file test_stud.sql file
ADD test_stud.sql /docker-entrypoint-initdb.d
EXPOSE 3307


