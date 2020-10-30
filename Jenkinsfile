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
            sh "${mvnHome}/bin/mvn package"                
            }
      }
    }
  }
}