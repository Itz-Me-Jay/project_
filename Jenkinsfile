pipeline {
    agent any

    stages {

        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t itzmejayasurya/devops-integration .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                   sh 'docker login -u itzmejayasurya -p ${dockerhubpwd}'
                   sh 'docker push itzmejayasurya/devops-integration'
                    }        
                }  
            }              
        }
    }
}
