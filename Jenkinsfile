pipeline {
    agent any
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
                sh 'printenv'
                withMaven(mavenSettingsConfig: 'maven-settings-global') {
                    sh 'mvn clean package'
                }
            }
        }     
    }    
}