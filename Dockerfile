FROM  openjdk:8
EXPOSE 6000
ADD target/springbootdemo.jar springbootdemo.jar
ENTRYPOINT ["java","-jar","/springbootdemo.jar"]