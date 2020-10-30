pipeline {
  environment {
    registryCredential = "docker"
  }
  agent any
  stages {
    stage('checkout')
    {
          steps{
    script{
         git branch: 'main', url: 'https://github.com/venuj1244/k8s-springboot-demo.git'
    }

    }
   }
   stage('Build And Compile') {
      steps{
        script {
            def mvnHome = tool name: 'MAVEN_HOME', type: 'maven'
            sh "${mvnHome}/bin/mvn clean install"                
            }
      }
    }
    stage('Load') {
      steps{
        script {
          app = docker.build("venucareer2019/springbootdemo")
        }
      }
    }
     stage('Deploy') {
      steps{
        script {
          docker.withRegistry( "https://registry.hub.docker.com", registryCredential ) {
           // dockerImage.push()
          app.push("latest")
          }
        }
      }
    }
  }
}