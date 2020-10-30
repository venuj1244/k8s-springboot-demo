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
         git branch: '*/*', url: 'https://github.com/venuj1244/k8s-springboot-demo.git'
    }

    }
   }
  }
}