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
          dockerImage = docker.build registry
        }
      }
    } 
   stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry('',registryCredential) {
             dockerImage.push()
       }
        }
      }
    }
    stage('Run Docker Image') {
      steps{
        script {
          dockerImage.run("-p 8081:8080 --rm --name springbootdemocontainer12")
        }
      }
    }
}    
}