pipeline {
  environment {
    registryCredential = "docker"
  }
  agent any
  stages {
    stage('Build') {
      steps{
        script {
         // 
          git 'https://github.com/venuj1244/k8s-springboot-demo.git'
          sh 'mvn clean install'
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