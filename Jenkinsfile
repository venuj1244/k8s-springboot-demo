pipeline {
  agent any
  tools {
    maven 'M3'
  }
  stages {
    stage('checkout')
    {
          steps{
    script{
         git branch: 'main', url: 'https://github.com/venuj1244/k8s-springboot-demo.git'
    }

    }
   }
   stage('Build') {
      steps {
       script{
        sh 'mvn -B -DskipTests clean package'
        }
      }
    }
  }
}