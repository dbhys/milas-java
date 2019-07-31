FROM openjdk:8-jdk-alpine

LABEL language="java" jdk-version=8 contains="bash, vim, unzip, curl, telnet"
MAINTAINER Milas

ENV TZ="Asia/Shanghai"

RUN apk update upgrade \
&& apk add --no-cache bash vim procps unzip curl telnet
RUN mkdir -p /deployments
