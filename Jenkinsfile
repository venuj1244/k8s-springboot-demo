pipeline {
  agent any
  tools {
    maven 'M3'
  }
  stages {
    stage('checkout')
    {
          steps{
         git branch: 'main', url: 'https://github.com/venuj1244/k8s-springboot-demo.git'
    }
   }
   stage('Build') {
      steps {
        def mvn_version = 'M3'
        withEnv( ["PATH+MAVEN=${tool mvn_version}/bin"] ) {
        sh "mvn clean package"
        }
      }
    }
  }
}