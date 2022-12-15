#Pull base image.
FROM ubuntu:latest

LABEL Author="AJ Brown <ajalantbrown@gmail.com>"

#Add user Install Node.js 
RUN useradd -m admin
RUN apt-get -y update && apt-get install -y \curl
RUN curl -sL https://deb.nodesource.com/setup_18.x && apt-get install -y nodejs
RUN apt-get install -y npm
RUN cd home; cd admin;
RUN mkdir api

#bundle app source
COPY ./src/ /home/admin/api

#Binds to port 8080
EXPOSE  3030