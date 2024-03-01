# This Dockerfile is a Text file wher we consider
# all the build instructions to build an image
# Source Application - https://artifactory-storage-myapp.s3.us-east-2.amazonaws.com/myapp.war
# Webapps - /usr/local/tomcat/webapps/

# FROM ubuntu

#FROM tomcat

#RUN /bin/bash -c 'wget https://artifactory-storage-myapp.s3.us-east-2.amazonaws.com/myapp.war'

# COPY https://artifactory-storage-myapp.s3.us-east-2.amazonaws.com/myapp.war /usr/local/tomcat/webapps/myapp.war

#COPY ./target/myapp.war /usr/local/tomcat/webapps/myapp.war

#--------------
# Base Image    :    Tomcat
# WebApps       :   /usr/local/tomcat/webapps/
# On Build Server - /root/source-myapp-webapp/target/myapp.war


FROM tomcat

EXPOSE 8080

COPY ./target/myapp.war /usr/local/tomcat/webapps/myapp.war

