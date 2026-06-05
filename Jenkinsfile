pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Checkout dari GitHub otomatis oleh Jenkins'
                checkout scm
            }
        }

        stage('Setup Environment') {
            steps {
                sh '''
                python3 --version

                # buat virtual environment
                python3 -m venv venv
                '''
            }
        }

        stage('Install Dependencies') {
            steps {
                sh '''
                # aktifkan venv
                . venv/bin/activate

                # upgrade pip
                pip install --upgrade pip

                # install dependency
                pip install flask pytest
                '''
            }
        }

        stage('Test') {
            steps {
                sh '''
                . venv/bin/activate
                pytest -v
                '''
            }
        }

    }

    post {
        always {
            echo 'Pipeline selesai (success / fail tetap masuk sini)'
        }
        success {
            echo 'Build berhasil ✅'
        }
        failure {
            echo 'Build gagal ❌'
        }
    }
}