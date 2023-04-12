FROM openjdk:17
EXPOSE 9000
COPY target/g1-config-server-0.0.1-SNAPSHOT.jar g1-config-server-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","g1-config-server-0.0.1-SNAPSHOT.jar"]