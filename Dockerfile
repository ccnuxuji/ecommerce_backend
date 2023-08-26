FROM adoptopenjdk/openjdk13
COPY /target/spring-boot-ecommerce-0.0.1-SNAPSHOT.jar spring-boot-ecommerce-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","spring-boot-ecommerce-0.0.1-SNAPSHOT.jar"]
