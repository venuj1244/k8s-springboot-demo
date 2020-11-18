FROM  openjdk:8
EXPOSE 5000
ADD target/springbootdemo.jar springbootdemo.jar
ENTRYPOINT ["java","-jar","/springbootdemo.jar"]