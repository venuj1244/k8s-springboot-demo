FROM  openjdk:8
EXPOSE 8081
ADD target/springbootdemo.jar springbootdemo.jar
ENTRYPOINT ["java","-jar","/springbootdemo.jar"]