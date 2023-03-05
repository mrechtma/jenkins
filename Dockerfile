# FROM ubuntu

# MAINTAINER Moshe

# RUN apt-get update

# CMD ["echo", "Hello World"]
RUN echo  "start dockerfile"
FROM node:16.13.1-alpine

RUN apk add -U subversion
