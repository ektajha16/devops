##define base docker image
FROM java:8
LABEL maintainer="ekta"
ADD my-app-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]



1.2 Build docker image
docker build -t app:latest  .



docker images 

1.3 Run the image
docker run -p 8080:8080 app
