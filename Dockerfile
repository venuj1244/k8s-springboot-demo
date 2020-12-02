FROM  openjdk:8
EXPOSE 8080
ADD target/springbootdemo.jar springbootdemo.jar
ENTRYPOINT ["java","-jar","/springbootdemo.jar"]