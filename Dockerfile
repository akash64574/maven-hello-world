FROM openjdk:8
#COPY  /home/my-app-1.0-SNAPSHOT.jar /home

EXPOSE 8085
ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
