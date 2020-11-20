pipeline {
    agent any
    environment {
    registry = "venucareer2019/springbootdemo"
    registryCredential = 'dockerhub_id'
    dockerImage=''
    }
    tools {
        maven 'M3'
        jdk 'jdk8'
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
                    bat 'mvn clean package'
            }
        } 
        stage('Building image') {
      steps{
        script {
          bat 'docker build -t venucareer2019/k8sspringbootdemo:latest .'
        }
      }
    } 
   stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry('',registryCredential) {
             bat 'docker push venucareer2019/k8sspringbootdemo:latest'
       }
        }
      }
    }
}    
}