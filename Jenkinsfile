pipeline {

    agent any

    environment {
        IMAGE_NAME = "cicd-demo"
        IMAGE_TAG = "${BUILD_NUMBER}"
    }

    stages {

        stage('Checkout') {
            steps {
                echo 'Checkout Source'
            }
        }

        stage('Build Script') {
            steps {
                sh 'chmod +x scripts/build.sh'
                sh './scripts/build.sh'
            }
        }

        stage('Docker Build') {
            steps {
                sh '''
                docker build \
                  -t ${IMAGE_NAME}:${IMAGE_TAG} \
                  .
                '''
            }
        }

    }

}
