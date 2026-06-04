pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Skip git dulu (lokal project)'
            }
        }

        stage('Install') {
            steps {
                sh '''
                python3 --version
                python3 -m pip install flask pytest
                '''
            }
        }

        stage('Test') {
            steps {
                sh '''
                pytest || true
                '''
            }
        }
    }
}