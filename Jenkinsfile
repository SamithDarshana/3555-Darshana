pipeline {
    agent any 
    
    stages { 
        stage('SCM Checkout') {
            steps {
                retry(3) {
                    git branch: 'main', url: 'https://github.com/SamithDarshana/3555-Darshana.git'
                }
            }
        }
        stage('Build Docker Image') {
            steps {  
                bat 'docker build -t  devops-assignment-02'
            }
        }
        stage('Login to Docker Hub') {
            steps { 
                withCredentials([string(credentialsId: 'dockerhubpassword', variable: 'dockerhubpass')]) {
                 script {
                        bat "docker login -u samithdarshana -p ${samith_docker}}"
                    }
                }
            }
        }
        stage('Push Image') {
            steps {
                bat 'docker push devops-assignment-02'
            }
        }
    }
    post {
        always {
            bat 'docker logout'
        }
    }
}
