FROM openjdk:17-jdk-slim

LABEL language="java" jdk-version="17" contains="bash, vim, unzip, curl, telnet"
MAINTAINER Milas

ENV TZ="Asia/Shanghai"

RUN apt-get update \
&& apt-get install procps unzip curl telnet \
&& mkdir -p /deployments

WORKDIR /deployments
