FROM openjdk:17-jdk-alpine

LABEL language="java" jdk-version="17" contains="bash, vim, unzip, curl, telnet"
MAINTAINER Milas

ENV TZ="Asia/Shanghai"

RUN apk update upgrade \
&& apk add --no-cache bash vim procps unzip curl busybox-extras \
&& mkdir -p /deployments

WORKDIR /deployments
