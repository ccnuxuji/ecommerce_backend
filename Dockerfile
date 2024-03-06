FROM maven:3.6.3-jdk-13 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests

FROM openjdk:13-jdk-slim
COPY --from=build /target/spring-boot-ecommerce-0.0.1-SNAPSHOT.jar spring-boot-ecommerce-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar", "-XX:MaxMetaspaceSize=256m","-Xms128m","-Xmx128m","-Xmn32m","-XX:SurvivorRatio=6","spring-boot-ecommerce-0.0.1-SNAPSHOT.jar"]
