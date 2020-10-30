FROM  openjdk:8
EXPOSE 8081
ADD target/k8s-springboot-demo-0.0.1-SNAPSHOT.jar k8s-springboot-demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/k8s-springboot-demo-0.0.1-SNAPSHOT.jar"]