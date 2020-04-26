FROM openjdk:8-jre
ADD target/microservices-demo-2.0.0.RELEASE.jar app.jar
EXPOSE 1111
EXPOSE 2222
EXPOSE 3333
# ENTRYPOINT ["java","-jar","/app.jar","accounts"]

#docker run --name reggo --hostname reggo --network accounts-net -p 1111:1111 paulc4/microservice java -jar app.jar reg
#docker run --name web --hostname web --network accounts-net -p 3333:3333 paulc4/microservice java -jar app.jar web --registration.server.hostname=172.18.0.2
#docker run -b-name accounts --hostname accounts --network accounts-net -p 2222:2222 paulc4/microservice java -jar app.jar accounts  --registration.server.hostname=172.18.0.2