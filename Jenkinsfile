pipeline {

    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Checkout Source'
            }
        }

        stage('Build') {
            steps {
                sh 'chmod +x scripts/build.sh'
                sh './scripts/build.sh'
            }
        }

    }

}
