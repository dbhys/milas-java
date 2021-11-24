# milas-java
Used to build java docker image

Java version: 17

Add bash, vim, unzip, curl, in order to do some operation easily in container.

Suggest you deploy your code in "/deployments" dir.

## How to use it
##### 1. Write your Dockerfile like this:

```
FROM dbhys/milas-java
VOLUME /tmp

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /deployments/app.jar

EXPOSE 8080
CMD ["java","-jar","app.jar"]

```
**Note:** The default WORKDIR is /deployments, and you must run "java -jar" at WORKDIR, other wise
the external config application property files won't be loaded.

[springboot-external-config-application-property-files](https://docs.spring.io/spring-boot/docs/current/reference/html/boot-features-external-config.html#boot-features-external-config-application-property-files)
```
SpringApplication will load properties from application.properties files in the following locations and add them to the Spring Environment:

1. A /config subdir of the current directory.
2. The current directory
3. A classpath /config package
4. The classpath root
```
##### 2. Build your image
```
build -t my-app:1.0.0 .
```
