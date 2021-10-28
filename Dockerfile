FROM anjuna91/jenkins-docker
MAINTAINER Anjuna
RUN java -jar $WORKSPACE/target/*.jar &
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "$WORKSPACE/target/*.jar"]
#FROM openjdk:8
#COPY  /home/my-app-1.0-SNAPSHOT.jar /home

#EXPOSE 8085
#ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
