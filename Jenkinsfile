pipeline {
    agent any

    environment {
        APP_NAME = "jenkins-demo"
        ENV = "env"
        VERSION = "1.0.0"
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage("Build") {
            steps {
                sh 'echo Building application'
            }
        }

        stage('Test') {
            steps {
                sh 'echo Running Tests'
            }
        }

        stage('Package') {
            steps {
                sh 'echo Packing app'
            }
        }

        stage('Environment Tests') {
            steps {
                sh '''
                    echo App: $APP_NAME
                    echo Env: $ENV
                    echo Version: $VERSION
                '''
            }    
        }
    }

    post {
        success {
            echo 'Pipeline finished successfully!'
        }
        failure {
            echo 'Pipeline FAILED'
        }
    }
}
  
