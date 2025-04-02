pipeline {
    agent any
    environment {
        DOCKER_DEV_REPO = "vijay192001/dev-repo"
        DOCKER_PROD_REPO = "vijay192001/prod-repo"
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("${DOCKER_DEV_REPO}:${env.BUILD_NUMBER}")
                }
            }
        }
        stage('Push to DockerHub Dev') {
            when {
                branch 'dev'
            }
            steps {
                script {
                    dockerImage.push()
                }
            }
        }
        stage('Push to DockerHub Prod') {
            when {
                branch 'master'
            }
            steps {
                script {
                    dockerImage = docker.build("${DOCKER_PROD_REPO}:${env.BUILD_NUMBER}")
                    dockerImage.push()
                }
            }
        }
    }
}
