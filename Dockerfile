FROM  openjdk:8
ADD target/springbootdemo.jar springbootdemo.jar
ENTRYPOINT ["java","-jar","/springbootdemo.jar"]