# FROM ubuntu

# MAINTAINER Moshe

# RUN apt-get update

# CMD ["echo", "Hello World"]
FROM node:16.13.1-alpine

RUN apk add -U subversion
