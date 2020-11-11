pipeline {
  environment {
    registryCredential = "docker"
    mvnHome="C:/maven/maven-new-3.6.3"
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
            sh "${mvnHome}/bin/mvn package"                
            }
      }
    }
  }
}