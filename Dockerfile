##define base docker image
FROM java:8
LABEL maintainer="ekta"
ADD my-app-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]

###Build docker image
docker build -t app:latest  .
 

##Run the image
docker run -p 8080:8080 app
