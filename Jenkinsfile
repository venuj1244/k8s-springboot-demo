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
                    sh 'mvn clean package'
            }
        } 
        stage('Building image') {
      steps{
        script {
          sh 'docker build -t venucareer2019/k8sspringbootdemo:latest .'
        }
      }
    } 
   stage('Push Image') {
      steps{
        script {
          docker.withRegistry('',registryCredential) {
             sh 'docker push venucareer2019/k8sspringbootdemo:latest'
       }
        }
      }
    }
    stage('Deploy to K8S') {
    steps {
        withCredentials([
            string(credentialsId: 'kubernetes', variable: 'api_token')
            ]) {
             sh 'kubectl --token $api_token --server https://192.168.0.14:8443 --insecure-skip-tls-verify=true apply -f deployment.yaml '
               }
            }
           }
}    
}